# -*- coding: utf-8 -*-
"""
数据编辑API - 实体属性修订和关系增删
支持文件锁机制，防止多用户并发编辑冲突
"""

import json
import shutil
import fcntl
import threading
import time
from datetime import datetime
from pathlib import Path
from typing import List, Optional, Dict, Any
from contextlib import contextmanager
from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.orm import Session
from pydantic import BaseModel

from .database import get_db
from .models import User, OperationLog
from .deps import require_teacher, log_operation
from config import SUBJECT_CONFIG, DATA_ROOT

router = APIRouter()

# ========== 文件锁管理 ==========

# 内存锁字典，用于线程间同步
_file_locks = {}
_lock_dict_lock = threading.Lock()


class FileLockTimeout(Exception):
    """文件锁超时异常"""
    pass


@contextmanager
def file_lock(file_path: Path, timeout: float = 30.0):
    """
    获取文件的排他锁，支持超时
    
    使用双层锁机制：
    1. 线程锁 (threading.Lock): 处理同一进程内的并发
    2. 文件锁 (fcntl.flock): 处理多进程间的并发
    
    Args:
        file_path: 要锁定的文件路径
        timeout: 获取锁的超时时间（秒）
    """
    file_key = str(file_path.absolute())
    
    # 获取或创建线程锁
    with _lock_dict_lock:
        if file_key not in _file_locks:
            _file_locks[file_key] = threading.Lock()
        thread_lock = _file_locks[file_key]
    
    # 尝试获取线程锁
    acquired = thread_lock.acquire(timeout=timeout)
    if not acquired:
        raise FileLockTimeout(f"无法获取文件锁: {file_path.name}，可能有其他用户正在编辑")
    
    lock_file = None
    try:
        # 创建锁文件
        lock_path = file_path.parent / f".{file_path.name}.lock"
        lock_file = open(lock_path, 'w')
        
        # 尝试获取文件锁（非阻塞）
        start_time = time.time()
        while True:
            try:
                fcntl.flock(lock_file.fileno(), fcntl.LOCK_EX | fcntl.LOCK_NB)
                break
            except (IOError, OSError):
                if time.time() - start_time >= timeout:
                    raise FileLockTimeout(f"无法获取文件锁: {file_path.name}，可能有其他用户正在编辑")
                time.sleep(0.1)
        
        yield
        
    finally:
        # 释放文件锁
        if lock_file:
            try:
                fcntl.flock(lock_file.fileno(), fcntl.LOCK_UN)
                lock_file.close()
                # 尝试删除锁文件
                lock_path = file_path.parent / f".{file_path.name}.lock"
                if lock_path.exists():
                    lock_path.unlink()
            except Exception:
                pass
        
        # 释放线程锁
        thread_lock.release()


# ========== 数据模型 ==========

class EntityUpdate(BaseModel):
    """实体更新模型"""
    identifier: str
    updates: Dict[str, Any]  # 要更新的字段


class RelationCreate(BaseModel):
    """关系创建模型"""
    source: str
    target: str
    relation_name: str
    label: Optional[str] = None


class RelationDelete(BaseModel):
    """关系删除模型"""
    source: str
    target: str
    relation_name: str


class BatchEditRequest(BaseModel):
    """批量编辑请求"""
    subject_id: str
    entity_updates: List[EntityUpdate] = []
    relation_creates: List[RelationCreate] = []
    relation_deletes: List[RelationDelete] = []


# ========== 辅助函数 ==========

def find_entity_file(subject_id: str, identifier: str) -> Optional[Path]:
    """查找实体所在的JSON文件"""
    config = SUBJECT_CONFIG.get(subject_id)
    if not config:
        return None
    
    data_dir = DATA_ROOT / config['data_dir']
    entities_dir = data_dir / "entities"
    if not entities_dir.exists():
        entities_dir = data_dir / "实体"
    
    if not entities_dir.exists():
        return None
    
    # 遍历所有JSON文件查找实体
    for json_file in entities_dir.glob("*.json"):
        try:
            with open(json_file, 'r', encoding='utf-8') as f:
                data = json.load(f)
            
            entities = data if isinstance(data, list) else data.get('entities', [])
            for entity in entities:
                if entity.get('identifier') == identifier:
                    return json_file
        except Exception:
            continue
    
    return None


def create_backup(file_path: Path) -> Path:
    """创建文件备份"""
    timestamp = datetime.now().strftime('%Y%m%d_%H%M%S')
    backup_dir = file_path.parent.parent / "backups"
    backup_dir.mkdir(exist_ok=True)
    
    backup_path = backup_dir / f"{file_path.stem}_{timestamp}.bak"
    shutil.copy2(file_path, backup_path)
    
    # 只保留最近10个备份
    backups = sorted(backup_dir.glob(f"{file_path.stem}_*.bak"))
    for old_backup in backups[:-10]:
        old_backup.unlink()
    
    return backup_path


def get_relations_file(subject_id: str) -> Optional[Path]:
    """获取关系文件路径"""
    config = SUBJECT_CONFIG.get(subject_id)
    if not config:
        return None
    
    data_dir = DATA_ROOT / config['data_dir']
    
    # 尝试多个可能的关系文件名
    for dir_name in ['relations', 'relation', '关系']:
        relations_dir = data_dir / dir_name
        if relations_dir.exists():
            # 返回第一个JSON文件或创建新文件
            json_files = list(relations_dir.glob("*.json"))
            if json_files:
                return json_files[0]
            else:
                return relations_dir / "relations.json"
    
    return None


# ========== API端点 ==========

@router.post("/entity/update")
async def update_entity(
    subject_id: str,
    entity_update: EntityUpdate,
    current_user: User = Depends(require_teacher),
    db: Session = Depends(get_db)
):
    """更新实体属性（支持文件锁）"""
    # 查找实体文件
    entity_file = find_entity_file(subject_id, entity_update.identifier)
    if not entity_file:
        raise HTTPException(status_code=404, detail="实体不存在")
    
    try:
        # 使用文件锁保护编辑操作
        with file_lock(entity_file, timeout=30.0):
            # 创建备份
            backup_path = create_backup(entity_file)
            
            # 读取文件
            with open(entity_file, 'r', encoding='utf-8') as f:
                data = json.load(f)
            
            # 更新实体
            is_list = isinstance(data, list)
            entities = data if is_list else data.get('entities', [])
            
            entity_found = False
            for entity in entities:
                if entity.get('identifier') == entity_update.identifier:
                    # 更新字段
                    entity.update(entity_update.updates)
                    entity_found = True
                    break
            
            if not entity_found:
                raise HTTPException(status_code=404, detail="实体未找到")
            
            # 写回文件
            if is_list:
                output = entities
            else:
                data['entities'] = entities
                output = data
            
            with open(entity_file, 'w', encoding='utf-8') as f:
                json.dump(output, f, ensure_ascii=False, indent=2)
        
        # 记录操作日志
        log_operation(
            db, current_user, "update_entity",
            "entity", entity_update.identifier,
            details={
                "subject": subject_id,
                "updates": entity_update.updates,
                "backup": str(backup_path)
            }
        )
        
        return {
            "success": True,
            "message": "实体更新成功",
            "backup": str(backup_path)
        }
    
    except FileLockTimeout as e:
        raise HTTPException(status_code=423, detail=str(e))  # 423 Locked
    except HTTPException:
        raise
    except Exception as e:
        raise HTTPException(status_code=500, detail=f"更新失败: {str(e)}")


@router.post("/relation/create")
async def create_relation(
    subject_id: str,
    relation: RelationCreate,
    current_user: User = Depends(require_teacher),
    db: Session = Depends(get_db)
):
    """创建新关系（支持文件锁）"""
    relations_file = get_relations_file(subject_id)
    if not relations_file:
        raise HTTPException(status_code=404, detail="关系文件不存在")
    
    try:
        # 确保文件存在以便获取锁
        relations_file.parent.mkdir(parents=True, exist_ok=True)
        if not relations_file.exists():
            with open(relations_file, 'w', encoding='utf-8') as f:
                json.dump({"relations": []}, f)
        
        # 使用文件锁保护编辑操作
        with file_lock(relations_file, timeout=30.0):
            # 创建备份
            backup_path = create_backup(relations_file)
            
            # 读取关系数据
            with open(relations_file, 'r', encoding='utf-8') as f:
                data = json.load(f)
            
            # 添加新关系
            relations = data if isinstance(data, list) else data.get('relations', [])
            
            # 检查是否已存在
            for r in relations:
                if (r.get('source') == relation.source and 
                    r.get('target') == relation.target and 
                    r.get('relationName') == relation.relation_name):
                    raise HTTPException(status_code=400, detail="关系已存在")
            
            new_relation = {
                "source": relation.source,
                "target": relation.target,
                "relationName": relation.relation_name,
                "label": relation.label or relation.relation_name
            }
            relations.append(new_relation)
            
            # 写回文件
            if isinstance(data, list):
                output = relations
            else:
                data['relations'] = relations
                output = data
            
            with open(relations_file, 'w', encoding='utf-8') as f:
                json.dump(output, f, ensure_ascii=False, indent=2)
        
        # 记录日志
        log_operation(
            db, current_user, "create_relation",
            "relation", f"{relation.source}→{relation.target}",
            details={
                "subject": subject_id,
                "relation": new_relation,
                "backup": str(backup_path) if backup_path else None
            }
        )
        
        return {
            "success": True,
            "message": "关系创建成功",
            "relation": new_relation
        }
    
    except FileLockTimeout as e:
        raise HTTPException(status_code=423, detail=str(e))
    except HTTPException:
        raise
    except Exception as e:
        raise HTTPException(status_code=500, detail=f"创建失败: {str(e)}")


@router.post("/relation/delete")
async def delete_relation(
    subject_id: str,
    relation: RelationDelete,
    current_user: User = Depends(require_teacher),
    db: Session = Depends(get_db)
):
    """删除关系（支持文件锁）"""
    relations_file = get_relations_file(subject_id)
    if not relations_file or not relations_file.exists():
        raise HTTPException(status_code=404, detail="关系文件不存在")
    
    try:
        # 使用文件锁保护编辑操作
        with file_lock(relations_file, timeout=30.0):
            # 创建备份
            backup_path = create_backup(relations_file)
            
            # 读取关系数据
            with open(relations_file, 'r', encoding='utf-8') as f:
                data = json.load(f)
            
            # 删除关系
            is_list = isinstance(data, list)
            relations = data if is_list else data.get('relations', [])
            
            original_count = len(relations)
            relations = [
                r for r in relations
                if not (
                    r.get('source') == relation.source and
                    r.get('target') == relation.target and
                    r.get('relationName') == relation.relation_name
                )
            ]
            
            if len(relations) == original_count:
                raise HTTPException(status_code=404, detail="关系不存在")
            
            # 写回文件
            if is_list:
                output = relations
            else:
                data['relations'] = relations
                output = data
            
            with open(relations_file, 'w', encoding='utf-8') as f:
                json.dump(output, f, ensure_ascii=False, indent=2)
        
        # 记录日志
        log_operation(
            db, current_user, "delete_relation",
            "relation", f"{relation.source}→{relation.target}",
            details={
                "subject": subject_id,
                "relation_name": relation.relation_name,
                "backup": str(backup_path)
            }
        )
        
        return {
            "success": True,
            "message": "关系删除成功",
            "backup": str(backup_path)
        }
    
    except FileLockTimeout as e:
        raise HTTPException(status_code=423, detail=str(e))
    except HTTPException:
        raise
    except Exception as e:
        raise HTTPException(status_code=500, detail=f"删除失败: {str(e)}")


@router.post("/batch")
async def batch_edit(
    request: BatchEditRequest,
    current_user: User = Depends(require_teacher),
    db: Session = Depends(get_db)
):
    """批量编辑操作"""
    results = {
        "success": True,
        "entity_updates": 0,
        "relation_creates": 0,
        "relation_deletes": 0,
        "errors": []
    }
    
    # 执行实体更新
    for entity_update in request.entity_updates:
        try:
            await update_entity(request.subject_id, entity_update, current_user, db)
            results["entity_updates"] += 1
        except Exception as e:
            results["errors"].append({
                "type": "entity_update",
                "id": entity_update.identifier,
                "error": str(e)
            })
    
    # 执行关系创建
    for relation in request.relation_creates:
        try:
            await create_relation(request.subject_id, relation, current_user, db)
            results["relation_creates"] += 1
        except Exception as e:
            results["errors"].append({
                "type": "relation_create",
                "id": f"{relation.source}→{relation.target}",
                "error": str(e)
            })
    
    # 执行关系删除
    for relation in request.relation_deletes:
        try:
            await delete_relation(request.subject_id, relation, current_user, db)
            results["relation_deletes"] += 1
        except Exception as e:
            results["errors"].append({
                "type": "relation_delete",
                "id": f"{relation.source}→{relation.target}",
                "error": str(e)
            })
    
    if results["errors"]:
        results["success"] = False
    
    return results


@router.get("/backups/{subject_id}")
async def list_backups(
    subject_id: str,
    current_user: User = Depends(require_teacher)
):
    """列出备份文件"""
    config = SUBJECT_CONFIG.get(subject_id)
    if not config:
        raise HTTPException(status_code=404, detail="学科不存在")
    
    data_dir = DATA_ROOT / config['data_dir']
    backup_dir = data_dir / "backups"
    
    if not backup_dir.exists():
        return {"success": True, "backups": []}
    
    backups = []
    for backup_file in sorted(backup_dir.glob("*.bak"), reverse=True):
        backups.append({
            "filename": backup_file.name,
            "path": str(backup_file),
            "size": backup_file.stat().st_size,
            "modified": backup_file.stat().st_mtime
        })
    
    return {"success": True, "backups": backups[:50]}  # 最多返回50个
