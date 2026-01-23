# -*- coding: utf-8 -*-
"""
数据操作API - 数据管理功能（root和engineer可用）
"""

import subprocess
import sys
import shutil
import tarfile
import zipfile
import os
import json
import tempfile
from datetime import datetime
from typing import Optional, List, Dict, Any
from pathlib import Path
from fastapi import APIRouter, Depends, HTTPException, BackgroundTasks, UploadFile, File, Form
from sqlalchemy.orm import Session

from .database import get_db
from .models import User, DataVersion, VersionStatus, SyncQueue
from .schemas import (
    TaskResponse, ResponseBase, VersionInfo, CreateVersionRequest
)
from .deps import require_root, require_engineer, log_operation
from config import SUBJECT_CONFIG, PROJECT_ROOT, DATA_ROOT

# 快照存储目录
SNAPSHOT_DIR = PROJECT_ROOT / "archive" / "snapshots"

router = APIRouter()


def run_script(script_path: str, args: List[str] = None) -> tuple:
    """运行Python脚本并返回输出"""
    cmd = [sys.executable, script_path]
    if args:
        cmd.extend(args)
    
    try:
        result = subprocess.run(
            cmd,
            capture_output=True,
            text=True,
            timeout=300,  # 5分钟超时
            cwd=str(PROJECT_ROOT)
        )
        return result.returncode == 0, result.stdout + result.stderr
    except subprocess.TimeoutExpired:
        return False, "脚本执行超时"
    except Exception as e:
        return False, str(e)


# ========== 数据检查与修复 ==========

@router.post("/normalize", response_model=TaskResponse)
async def run_normalize(
    subject: Optional[str] = None,
    fix: bool = False,
    current_user: User = Depends(require_root),
    db: Session = Depends(get_db)
):
    """执行数据规范化检查/修复（仅root）"""
    script_path = PROJECT_ROOT / "scripts" / "data_normalizer.py"
    
    if not script_path.exists():
        raise HTTPException(status_code=500, detail="规范化脚本不存在")
    
    args = ["--check" if not fix else "--fix"]
    if subject:
        args.extend(["--subject", subject])
    if fix:
        args.append("--no-backup")  # API调用不自动备份，由用户确认
    
    success, output = run_script(str(script_path), args)
    
    log_operation(
        db, current_user, "data_normalize",
        details={"subject": subject, "fix": fix, "success": success}
    )
    
    return TaskResponse(
        success=success,
        message="数据规范化完成" if success else "执行失败",
        output=output
    )


@router.post("/analyze", response_model=TaskResponse)
async def run_analyze(
    subject: Optional[str] = None,
    current_user: User = Depends(require_root),
    db: Session = Depends(get_db)
):
    """执行数据质量分析（仅root）"""
    script_path = PROJECT_ROOT / "scripts" / "data_analyzer.py"
    
    if not script_path.exists():
        raise HTTPException(status_code=500, detail="分析脚本不存在")
    
    args = ["--all"]
    if subject:
        args.extend(["--subject", subject])
    
    success, output = run_script(str(script_path), args)
    
    log_operation(
        db, current_user, "data_analyze",
        details={"subject": subject, "success": success}
    )
    
    return TaskResponse(
        success=success,
        message="数据分析完成" if success else "执行失败",
        output=output
    )


@router.post("/generate-html", response_model=TaskResponse)
async def run_generate_html(
    subject: Optional[str] = None,
    current_user: User = Depends(require_root),
    db: Session = Depends(get_db)
):
    """生成HTML图谱（仅root）"""
    script_path = PROJECT_ROOT / "manage.py"
    
    args = ["generate"]
    if subject:
        args.extend(["--subject", subject])
    else:
        args.append("--all")
    
    success, output = run_script(str(script_path), args)
    
    # 同时更新index
    if success:
        run_script(str(script_path), ["update-index"])
    
    log_operation(
        db, current_user, "generate_html",
        details={"subject": subject, "success": success}
    )
    
    return TaskResponse(
        success=success,
        message="HTML生成完成" if success else "执行失败",
        output=output
    )


@router.post("/import-neo4j", response_model=TaskResponse)
async def run_import_neo4j(
    subject: Optional[str] = None,
    target: str = "local",
    clear: bool = False,
    current_user: User = Depends(require_root),
    db: Session = Depends(get_db)
):
    """导入数据到Neo4j（仅root）"""
    script_path = PROJECT_ROOT / "manage.py"
    
    args = ["import"]
    if subject:
        args.extend(["--subject", subject])
    else:
        args.append("--all")
    
    args.extend(["--target", target])
    
    if clear:
        args.append("--clear")
    
    success, output = run_script(str(script_path), args)
    
    log_operation(
        db, current_user, "import_neo4j",
        details={"subject": subject, "target": target, "clear": clear, "success": success}
    )
    
    return TaskResponse(
        success=success,
        message="Neo4j导入完成" if success else "执行失败",
        output=output
    )


@router.post("/sync", response_model=TaskResponse)
async def run_sync(
    subject: Optional[str] = None,
    current_user: User = Depends(require_root),
    db: Session = Depends(get_db)
):
    """同步学科数据（生成HTML + 更新索引）（仅root）"""
    script_path = PROJECT_ROOT / "manage.py"
    
    args = ["sync"]
    if subject:
        args.extend(["--subject", subject])
    else:
        args.append("--all")
    
    success, output = run_script(str(script_path), args)
    
    # 同步成功后清除needs_sync标记
    if success:
        if subject:
            sync_record = db.query(SyncQueue).filter(SyncQueue.subject_id == subject).first()
            if sync_record:
                sync_record.needs_sync = False
                sync_record.last_sync_at = datetime.utcnow()
                sync_record.edit_count = 0
                db.commit()
        else:
            # 清除所有学科的标记
            db.query(SyncQueue).update({
                SyncQueue.needs_sync: False,
                SyncQueue.last_sync_at: datetime.utcnow(),
                SyncQueue.edit_count: 0
            })
            db.commit()
    
    log_operation(
        db, current_user, "sync_data",
        details={"subject": subject, "success": success}
    )
    
    return TaskResponse(
        success=success,
        message="数据同步完成" if success else "执行失败",
        output=output
    )


# ========== 同步状态 ==========

@router.get("/sync-status")
async def get_sync_status(
    current_user: User = Depends(require_root),
    db: Session = Depends(get_db)
):
    """获取所有学科的同步状态"""
    sync_records = db.query(SyncQueue).all()
    
    # 构建状态字典
    status_dict = {}
    for record in sync_records:
        status_dict[record.subject_id] = {
            "needs_sync": record.needs_sync,
            "last_edit_at": record.last_edit_at.isoformat() if record.last_edit_at else None,
            "last_sync_at": record.last_sync_at.isoformat() if record.last_sync_at else None,
            "edit_count": record.edit_count
        }
    
    # 检查哪些学科需要同步
    subjects_need_sync = [
        {
            "subject_id": r.subject_id,
            "display_name": SUBJECT_CONFIG.get(r.subject_id, {}).get('display_name', r.subject_id),
            "edit_count": r.edit_count,
            "last_edit_at": r.last_edit_at.isoformat() if r.last_edit_at else None
        }
        for r in sync_records if r.needs_sync
    ]
    
    return {
        "success": True,
        "subjects_need_sync": subjects_need_sync,
        "total_need_sync": len(subjects_need_sync),
        "all_status": status_dict
    }


# ========== 版本管理 ==========

@router.get("/versions/{subject_id}")
async def list_versions(
    subject_id: str,
    current_user: User = Depends(require_root),
    db: Session = Depends(get_db)
):
    """获取学科版本列表（root）"""
    versions = db.query(DataVersion).filter(
        DataVersion.subject_id == subject_id
    ).order_by(DataVersion.created_at.desc()).all()
    
    return {
        "success": True,
        "versions": [VersionInfo.model_validate(v) for v in versions]
    }


@router.post("/versions", response_model=VersionInfo)
async def create_version(
    version_data: CreateVersionRequest,
    current_user: User = Depends(require_root),
    db: Session = Depends(get_db)
):
    """创建新版本（仅root）"""
    # 检查版本是否已存在
    existing = db.query(DataVersion).filter(
        DataVersion.subject_id == version_data.subject_id,
        DataVersion.version == version_data.version
    ).first()
    
    if existing:
        raise HTTPException(status_code=400, detail="版本已存在")
    
    # 获取实体和关系数量
    from .review import load_entities_from_json, load_relations_from_json
    entities = load_entities_from_json(version_data.subject_id)
    relations = load_relations_from_json(version_data.subject_id)
    
    version = DataVersion(
        subject_id=version_data.subject_id,
        version=version_data.version,
        base_version=version_data.base_version,
        description=version_data.description,
        entity_count=len(entities),
        relation_count=len(relations),
        created_by=current_user.id
    )
    db.add(version)
    db.commit()
    db.refresh(version)
    
    log_operation(
        db, current_user, "create_version", "version", str(version.id),
        details={"subject_id": version_data.subject_id, "version": version_data.version}
    )
    
    return VersionInfo.model_validate(version)


@router.post("/versions/{version_id}/publish", response_model=VersionInfo)
async def publish_version(
    version_id: int,
    current_user: User = Depends(require_root),
    db: Session = Depends(get_db)
):
    """发布版本（仅root）"""
    version = db.query(DataVersion).filter(DataVersion.id == version_id).first()
    if not version:
        raise HTTPException(status_code=404, detail="版本不存在")
    
    version.status = VersionStatus.published
    version.published_at = datetime.utcnow()
    db.commit()
    db.refresh(version)
    
    log_operation(
        db, current_user, "publish_version", "version", str(version_id),
        details={"subject_id": version.subject_id, "version": version.version}
    )
    
    return VersionInfo.model_validate(version)


# ========== 学科列表 ==========

@router.get("/subjects")
async def list_all_subjects(
    current_user: User = Depends(require_root)
):
    """获取所有学科列表（root）"""
    subjects = []
    for name, config in SUBJECT_CONFIG.items():
        subjects.append({
            "subject_id": name,
            "display_name": config.get('display_name', name),
            "icon": config.get('icon', '📚'),
            "data_dir": config.get('data_dir'),
            "neo4j_label": config.get('neo4j_label')
        })
    
    return {"success": True, "subjects": subjects}


# ========== 导出功能 ==========

@router.post("/export", response_model=TaskResponse)
async def export_data(
    subject: Optional[str] = None,
    current_user: User = Depends(require_root),
    db: Session = Depends(get_db)
):
    """导出数据到Excel（仅root）"""
    script_path = PROJECT_ROOT / "scripts" / "json2csv.py"
    
    if not script_path.exists():
        raise HTTPException(status_code=500, detail="导出脚本不存在")
    
    args = []
    if subject:
        args.extend(["--subject", subject])
    
    success, output = run_script(str(script_path), args)
    
    log_operation(
        db, current_user, "export_data",
        details={"subject": subject, "success": success}
    )
    
    return TaskResponse(
        success=success,
        message="数据导出完成" if success else "执行失败",
        output=output
    )


# ========== 数据快照管理 ==========

@router.get("/snapshots/{subject_id}")
async def list_snapshots(
    subject_id: str,
    current_user: User = Depends(require_root)
):
    """获取学科的所有快照列表"""
    subject_config = SUBJECT_CONFIG.get(subject_id)
    if not subject_config:
        raise HTTPException(status_code=404, detail="学科不存在")
    
    # 获取data_dir名称作为快照目录名
    data_dir_name = Path(subject_config['data_dir']).name
    snapshot_path = SNAPSHOT_DIR / data_dir_name
    
    snapshots = []
    if snapshot_path.exists():
        for f in sorted(snapshot_path.glob("*.tar.gz"), reverse=True):
            stat = f.stat()
            # 解析文件名获取版本和时间
            # 格式: v1.0_20260123_150000.tar.gz
            name_parts = f.stem.replace('.tar', '').split('_')
            version = name_parts[0] if name_parts else 'unknown'
            
            snapshots.append({
                "filename": f.name,
                "version": version,
                "size": stat.st_size,
                "size_human": f"{stat.st_size / 1024 / 1024:.2f} MB",
                "created_at": datetime.fromtimestamp(stat.st_mtime).isoformat(),
                "path": str(f)
            })
    
    return {
        "success": True,
        "subject_id": subject_id,
        "snapshots": snapshots,
        "total": len(snapshots)
    }


@router.post("/snapshots/create")
async def create_snapshot(
    subject_id: str,
    version: str = "auto",
    description: str = "",
    current_user: User = Depends(require_root),
    db: Session = Depends(get_db)
):
    """创建学科数据快照"""
    subject_config = SUBJECT_CONFIG.get(subject_id)
    if not subject_config:
        raise HTTPException(status_code=404, detail="学科不存在")
    
    data_dir = DATA_ROOT / subject_config['data_dir']
    if not data_dir.exists():
        raise HTTPException(status_code=404, detail="学科数据目录不存在")
    
    # 获取data_dir名称作为快照目录名
    data_dir_name = Path(subject_config['data_dir']).name
    snapshot_path = SNAPSHOT_DIR / data_dir_name
    snapshot_path.mkdir(parents=True, exist_ok=True)
    
    # 生成版本号
    if version == "auto":
        existing = list(snapshot_path.glob("*.tar.gz"))
        version = f"v{len(existing) + 1}.0"
    
    # 生成快照文件名
    timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
    snapshot_file = snapshot_path / f"{version}_{timestamp}.tar.gz"
    
    try:
        # 统计数据
        entities_count = 0
        relations_count = 0
        
        entities_dir = data_dir / "entities"
        relations_dir = data_dir / "relations"
        
        if entities_dir.exists():
            for json_file in entities_dir.glob("*.json"):
                import json
                with open(json_file, 'r', encoding='utf-8') as f:
                    data = json.load(f)
                    entities_count += len(data) if isinstance(data, list) else len(data.get('entities', []))
        
        if relations_dir.exists():
            for json_file in relations_dir.glob("*.json"):
                import json
                with open(json_file, 'r', encoding='utf-8') as f:
                    data = json.load(f)
                    relations_count += len(data) if isinstance(data, list) else len(data.get('relations', []))
        
        # 创建tar.gz归档
        with tarfile.open(snapshot_file, "w:gz") as tar:
            # 添加元数据文件
            import json
            import tempfile
            metadata = {
                "subject_id": subject_id,
                "version": version,
                "description": description,
                "created_at": datetime.now().isoformat(),
                "created_by": current_user.username,
                "entities_count": entities_count,
                "relations_count": relations_count,
                "data_dir": str(data_dir)
            }
            
            # 写入metadata.json
            with tempfile.NamedTemporaryFile(mode='w', suffix='.json', delete=False) as tf:
                json.dump(metadata, tf, ensure_ascii=False, indent=2)
                tf.flush()
                tar.add(tf.name, arcname="metadata.json")
                os.unlink(tf.name)
            
            # 添加entities目录
            if entities_dir.exists():
                for json_file in entities_dir.glob("*.json"):
                    tar.add(json_file, arcname=f"entities/{json_file.name}")
            
            # 添加relations目录
            if relations_dir.exists():
                for json_file in relations_dir.glob("*.json"):
                    tar.add(json_file, arcname=f"relations/{json_file.name}")
        
        # 记录操作日志
        log_operation(
            db, current_user, "create_snapshot", "snapshot", snapshot_file.name,
            details={
                "subject_id": subject_id,
                "version": version,
                "file": str(snapshot_file),
                "entities_count": entities_count,
                "relations_count": relations_count
            }
        )
        
        return {
            "success": True,
            "message": f"快照创建成功: {snapshot_file.name}",
            "snapshot": {
                "filename": snapshot_file.name,
                "version": version,
                "path": str(snapshot_file),
                "size": snapshot_file.stat().st_size,
                "entities_count": entities_count,
                "relations_count": relations_count
            }
        }
        
    except Exception as e:
        # 清理失败的快照文件
        if snapshot_file.exists():
            snapshot_file.unlink()
        raise HTTPException(status_code=500, detail=f"创建快照失败: {str(e)}")


@router.post("/snapshots/restore")
async def restore_snapshot(
    subject_id: str,
    filename: str,
    current_user: User = Depends(require_root),
    db: Session = Depends(get_db)
):
    """从快照恢复学科数据"""
    subject_config = SUBJECT_CONFIG.get(subject_id)
    if not subject_config:
        raise HTTPException(status_code=404, detail="学科不存在")
    
    data_dir = DATA_ROOT / subject_config['data_dir']
    data_dir_name = Path(subject_config['data_dir']).name
    snapshot_path = SNAPSHOT_DIR / data_dir_name / filename
    
    if not snapshot_path.exists():
        raise HTTPException(status_code=404, detail="快照文件不存在")
    
    try:
        # 先创建当前数据的备份
        backup_timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
        backup_file = SNAPSHOT_DIR / data_dir_name / f"pre_restore_backup_{backup_timestamp}.tar.gz"
        
        with tarfile.open(backup_file, "w:gz") as tar:
            entities_dir = data_dir / "entities"
            relations_dir = data_dir / "relations"
            
            if entities_dir.exists():
                for json_file in entities_dir.glob("*.json"):
                    tar.add(json_file, arcname=f"entities/{json_file.name}")
            
            if relations_dir.exists():
                for json_file in relations_dir.glob("*.json"):
                    tar.add(json_file, arcname=f"relations/{json_file.name}")
        
        # 解压快照覆盖当前数据
        with tarfile.open(snapshot_path, "r:gz") as tar:
            # 读取metadata
            metadata = None
            try:
                metadata_file = tar.extractfile("metadata.json")
                if metadata_file:
                    import json
                    metadata = json.load(metadata_file)
            except:
                pass
            
            # 清空并恢复entities目录
            entities_dir = data_dir / "entities"
            if entities_dir.exists():
                for json_file in entities_dir.glob("*.json"):
                    json_file.unlink()
            else:
                entities_dir.mkdir(parents=True, exist_ok=True)
            
            # 清空并恢复relations目录
            relations_dir = data_dir / "relations"
            if relations_dir.exists():
                for json_file in relations_dir.glob("*.json"):
                    json_file.unlink()
            else:
                relations_dir.mkdir(parents=True, exist_ok=True)
            
            # 解压文件
            for member in tar.getmembers():
                if member.name == "metadata.json":
                    continue
                
                if member.name.startswith("entities/"):
                    target = entities_dir / Path(member.name).name
                    content = tar.extractfile(member)
                    if content:
                        with open(target, 'wb') as f:
                            f.write(content.read())
                
                elif member.name.startswith("relations/"):
                    target = relations_dir / Path(member.name).name
                    content = tar.extractfile(member)
                    if content:
                        with open(target, 'wb') as f:
                            f.write(content.read())
        
        # 记录操作日志
        log_operation(
            db, current_user, "restore_snapshot", "snapshot", filename,
            details={
                "subject_id": subject_id,
                "snapshot": filename,
                "backup": str(backup_file),
                "metadata": metadata
            }
        )
        
        return {
            "success": True,
            "message": f"数据恢复成功，原数据已备份到: {backup_file.name}",
            "backup_file": backup_file.name,
            "restored_from": filename,
            "metadata": metadata
        }
        
    except Exception as e:
        raise HTTPException(status_code=500, detail=f"恢复失败: {str(e)}")


@router.delete("/snapshots/{subject_id}/{filename}")
async def delete_snapshot(
    subject_id: str,
    filename: str,
    current_user: User = Depends(require_root),
    db: Session = Depends(get_db)
):
    """删除快照"""
    subject_config = SUBJECT_CONFIG.get(subject_id)
    if not subject_config:
        raise HTTPException(status_code=404, detail="学科不存在")
    
    data_dir_name = Path(subject_config['data_dir']).name
    snapshot_path = SNAPSHOT_DIR / data_dir_name / filename
    
    if not snapshot_path.exists():
        raise HTTPException(status_code=404, detail="快照文件不存在")
    
    try:
        snapshot_path.unlink()
        
        log_operation(
            db, current_user, "delete_snapshot", "snapshot", filename,
            details={"subject_id": subject_id}
        )
        
        return {
            "success": True,
            "message": f"快照已删除: {filename}"
        }
    except Exception as e:
        raise HTTPException(status_code=500, detail=f"删除失败: {str(e)}")


# ========== ZIP数据包上传 ==========

# 实体必需字段
ENTITY_REQUIRED_FIELDS = ['identifier', 'title', 'type']
# 关系必需字段
RELATION_REQUIRED_FIELDS = ['source', 'target', 'relationName']


def is_pascal_case(s: str) -> bool:
    """检查字符串是否为PascalCase格式"""
    if not s or len(s) < 2:
        return True
    # PascalCase: 首字母大写，不全是大写，不包含下划线开头
    return s[0].isupper() and not s.isupper() and not s.startswith('_')


def validate_entity_json(data: Any, filename: str) -> Dict[str, Any]:
    """
    验证实体JSON数据格式
    
    支持两种格式：
    1. 列表格式: [{"identifier": ..., "title": ..., "type": ...}, ...]
    2. 对象格式: {"entities": [...]}
    
    增强检查：
    - 文件命名规范（PascalCase）
    - type字段与文件名一致性
    - identifier格式规范
    """
    result = {
        "valid": True,
        "errors": [],
        "warnings": [],
        "count": 0
    }
    
    # 获取文件名（不含扩展名）作为期望的type
    expected_type = Path(filename).stem
    
    # 检查文件命名是否为PascalCase（仅警告）
    if expected_type and not is_pascal_case(expected_type):
        # 检查是否全小写
        if expected_type.islower():
            result["warnings"].append(f"{filename}: 文件名建议使用PascalCase格式（如 {expected_type.title()}.json）")
    
    # 获取实体列表
    if isinstance(data, list):
        entities = data
    elif isinstance(data, dict) and 'entities' in data:
        entities = data['entities']
    else:
        result["valid"] = False
        result["errors"].append(f"{filename}: 格式错误，需要是列表或包含'entities'字段的对象")
        return result
    
    if not isinstance(entities, list):
        result["valid"] = False
        result["errors"].append(f"{filename}: 'entities'字段必须是列表")
        return result
    
    result["count"] = len(entities)
    
    if len(entities) == 0:
        result["warnings"].append(f"{filename}: 实体列表为空")
        return result
    
    # 检查每个实体的必需字段
    identifiers = set()
    type_mismatch_count = 0
    identifier_case_warnings = 0
    
    for i, entity in enumerate(entities):
        if not isinstance(entity, dict):
            result["valid"] = False
            result["errors"].append(f"{filename}[{i}]: 实体必须是对象")
            continue
        
        # 检查必需字段
        missing = [f for f in ENTITY_REQUIRED_FIELDS if f not in entity or not entity[f]]
        if missing:
            result["valid"] = False
            result["errors"].append(f"{filename}[{i}]: 缺少必需字段 {missing}")
        
        # 检查type字段与文件名一致性
        entity_type = entity.get('type', '')
        if entity_type and entity_type != expected_type:
            type_mismatch_count += 1
        
        # 检查identifier格式
        identifier = entity.get('identifier', '')
        if identifier:
            # 检查唯一性
            if identifier in identifiers:
                result["warnings"].append(f"{filename}[{i}]: identifier重复: {identifier}")
            identifiers.add(identifier)
            
            # 检查identifier前缀是否为PascalCase
            if '_' in identifier:
                prefix = identifier.split('_')[0]
                if prefix.islower() and len(prefix) > 2:
                    identifier_case_warnings += 1
    
    # 汇总警告（避免过多重复警告）
    if type_mismatch_count > 0:
        result["warnings"].append(
            f"{filename}: {type_mismatch_count}个实体的type字段与文件名({expected_type})不一致"
        )
    
    if identifier_case_warnings > 0:
        result["warnings"].append(
            f"{filename}: {identifier_case_warnings}个实体的identifier前缀建议使用PascalCase格式"
        )
    
    return result


def validate_relation_json(data: Any, filename: str) -> Dict[str, Any]:
    """
    验证关系JSON数据格式
    
    支持两种格式：
    1. 列表格式: [{"source": ..., "target": ..., "relationName": ...}, ...]
    2. 对象格式: {"relations": [...]}
    """
    result = {
        "valid": True,
        "errors": [],
        "warnings": [],
        "count": 0
    }
    
    # 获取关系列表
    if isinstance(data, list):
        relations = data
    elif isinstance(data, dict) and 'relations' in data:
        relations = data['relations']
    else:
        result["valid"] = False
        result["errors"].append(f"{filename}: 格式错误，需要是列表或包含'relations'字段的对象")
        return result
    
    if not isinstance(relations, list):
        result["valid"] = False
        result["errors"].append(f"{filename}: 'relations'字段必须是列表")
        return result
    
    result["count"] = len(relations)
    
    if len(relations) == 0:
        result["warnings"].append(f"{filename}: 关系列表为空")
        return result
    
    # 检查每个关系的必需字段
    for i, relation in enumerate(relations):
        if not isinstance(relation, dict):
            result["valid"] = False
            result["errors"].append(f"{filename}[{i}]: 关系必须是对象")
            continue
        
        # 检查必需字段
        missing = [f for f in RELATION_REQUIRED_FIELDS if f not in relation or not relation[f]]
        if missing:
            result["valid"] = False
            result["errors"].append(f"{filename}[{i}]: 缺少必需字段 {missing}")
    
    return result


def validate_cross_file_references(
    entity_identifiers: set,
    relations_data: List[Dict],
    relation_filename: str
) -> Dict[str, Any]:
    """
    验证关系文件中的引用是否在实体中存在
    
    检查：
    - source/target 是否在实体identifiers中存在
    - 大小写变体冲突检测
    """
    result = {
        "warnings": [],
        "missing_refs": [],
        "case_mismatches": []
    }
    
    # 创建小写到原始identifier的映射
    id_lower_map = {eid.lower(): eid for eid in entity_identifiers}
    
    missing_sources = set()
    missing_targets = set()
    case_mismatch_sources = {}
    case_mismatch_targets = {}
    
    for relation in relations_data:
        if not isinstance(relation, dict):
            continue
            
        source = relation.get('source', '')
        target = relation.get('target', '')
        
        # 检查source
        if source and source not in entity_identifiers:
            source_lower = source.lower()
            if source_lower in id_lower_map:
                # 大小写不匹配
                if source not in case_mismatch_sources:
                    case_mismatch_sources[source] = id_lower_map[source_lower]
            else:
                missing_sources.add(source)
        
        # 检查target
        if target and target not in entity_identifiers:
            target_lower = target.lower()
            if target_lower in id_lower_map:
                # 大小写不匹配
                if target not in case_mismatch_targets:
                    case_mismatch_targets[target] = id_lower_map[target_lower]
            else:
                missing_targets.add(target)
    
    # 生成警告
    if case_mismatch_sources:
        for wrong, correct in list(case_mismatch_sources.items())[:5]:  # 最多显示5个
            result["warnings"].append(
                f"{relation_filename}: source引用'{wrong}'与实体identifier'{correct}'大小写不一致"
            )
        if len(case_mismatch_sources) > 5:
            result["warnings"].append(
                f"{relation_filename}: 还有{len(case_mismatch_sources)-5}个source大小写不一致的问题"
            )
        result["case_mismatches"].extend(case_mismatch_sources.keys())
    
    if case_mismatch_targets:
        for wrong, correct in list(case_mismatch_targets.items())[:5]:
            result["warnings"].append(
                f"{relation_filename}: target引用'{wrong}'与实体identifier'{correct}'大小写不一致"
            )
        if len(case_mismatch_targets) > 5:
            result["warnings"].append(
                f"{relation_filename}: 还有{len(case_mismatch_targets)-5}个target大小写不一致的问题"
            )
        result["case_mismatches"].extend(case_mismatch_targets.keys())
    
    # 缺失引用（仅警告，不阻止上传）
    if missing_sources:
        samples = list(missing_sources)[:3]
        result["warnings"].append(
            f"{relation_filename}: {len(missing_sources)}个source引用在实体中不存在，如: {samples}"
        )
        result["missing_refs"].extend(missing_sources)
    
    if missing_targets:
        samples = list(missing_targets)[:3]
        result["warnings"].append(
            f"{relation_filename}: {len(missing_targets)}个target引用在实体中不存在，如: {samples}"
        )
        result["missing_refs"].extend(missing_targets)
    
    return result


def validate_zip_structure(zip_path: Path) -> Dict[str, Any]:
    """
    验证ZIP包结构和内容
    
    预期结构:
    xxx.zip
    ├── entities/
    │   ├── Type1.json
    │   └── Type2.json
    └── relations/
        ├── Relation1.json
        └── Relation2.json
    """
    result = {
        "valid": True,
        "errors": [],
        "warnings": [],
        "entity_files": [],
        "relation_files": [],
        "total_entities": 0,
        "total_relations": 0
    }
    
    try:
        with zipfile.ZipFile(zip_path, 'r') as zf:
            file_list = zf.namelist()
            
            # 检查目录结构
            has_entities_dir = any(f.startswith('entities/') for f in file_list)
            has_relations_dir = any(f.startswith('relations/') for f in file_list)
            
            if not has_entities_dir and not has_relations_dir:
                # 尝试检查是否有子目录（如 subject-name/entities/）
                # 过滤掉 __MACOSX 和隐藏目录（以.开头）
                top_dirs = set(
                    f.split('/')[0] for f in file_list 
                    if '/' in f 
                    and not f.startswith('__MACOSX')
                    and not f.startswith('.')
                )
                if len(top_dirs) == 1:
                    top_dir = list(top_dirs)[0]
                    has_entities_dir = any(f.startswith(f'{top_dir}/entities/') for f in file_list)
                    has_relations_dir = any(f.startswith(f'{top_dir}/relations/') for f in file_list)
                    
                    if has_entities_dir or has_relations_dir:
                        result["warnings"].append(f"ZIP包含子目录 '{top_dir}/'，将自动处理")
                        result["top_dir"] = top_dir
            
            if not has_entities_dir and not has_relations_dir:
                result["valid"] = False
                result["errors"].append("ZIP包必须包含 entities/ 或 relations/ 目录")
                return result
            
            # 获取前缀
            prefix = result.get("top_dir", "")
            if prefix:
                prefix = f"{prefix}/"
            
            # 收集所有实体的identifier用于交叉验证
            all_entity_identifiers = set()
            # 收集关系数据用于交叉验证
            relations_for_validation = []  # [(filename, relations_list), ...]
            
            # 验证实体文件
            for f in file_list:
                if f.startswith(f'{prefix}entities/') and f.endswith('.json'):
                    filename = Path(f).name
                    try:
                        with zf.open(f) as entity_file:
                            data = json.load(entity_file)
                            validation = validate_entity_json(data, filename)
                            
                            if not validation["valid"]:
                                result["valid"] = False
                                result["errors"].extend(validation["errors"])
                            result["warnings"].extend(validation["warnings"])
                            result["entity_files"].append({
                                "path": f,
                                "filename": filename,
                                "count": validation["count"]
                            })
                            result["total_entities"] += validation["count"]
                            
                            # 收集identifier用于交叉验证
                            entities = data if isinstance(data, list) else data.get('entities', [])
                            for entity in entities:
                                if isinstance(entity, dict) and 'identifier' in entity:
                                    all_entity_identifiers.add(entity['identifier'])
                    except json.JSONDecodeError as e:
                        result["valid"] = False
                        result["errors"].append(f"entities/{filename}: JSON解析失败 - {str(e)}")
            
            # 验证关系文件
            for f in file_list:
                if f.startswith(f'{prefix}relations/') and f.endswith('.json'):
                    filename = Path(f).name
                    try:
                        with zf.open(f) as relation_file:
                            data = json.load(relation_file)
                            validation = validate_relation_json(data, filename)
                            
                            if not validation["valid"]:
                                result["valid"] = False
                                result["errors"].extend(validation["errors"])
                            result["warnings"].extend(validation["warnings"])
                            result["relation_files"].append({
                                "path": f,
                                "filename": filename,
                                "count": validation["count"]
                            })
                            result["total_relations"] += validation["count"]
                            
                            # 收集关系数据用于交叉验证
                            relations = data if isinstance(data, list) else data.get('relations', [])
                            relations_for_validation.append((filename, relations))
                    except json.JSONDecodeError as e:
                        result["valid"] = False
                        result["errors"].append(f"relations/{filename}: JSON解析失败 - {str(e)}")
            
            # 执行交叉文件引用验证
            if all_entity_identifiers and relations_for_validation:
                for rel_filename, relations in relations_for_validation:
                    cross_validation = validate_cross_file_references(
                        all_entity_identifiers, relations, rel_filename
                    )
                    result["warnings"].extend(cross_validation["warnings"])
            
            if not result["entity_files"]:
                result["warnings"].append("未找到实体文件")
            if not result["relation_files"]:
                result["warnings"].append("未找到关系文件")
                
    except zipfile.BadZipFile:
        result["valid"] = False
        result["errors"].append("无效的ZIP文件")
    except Exception as e:
        result["valid"] = False
        result["errors"].append(f"验证失败: {str(e)}")
    
    return result


@router.post("/upload/validate")
async def validate_upload(
    file: UploadFile = File(...),
    current_user: User = Depends(require_engineer)
):
    """
    验证上传的ZIP数据包格式（不导入数据）
    
    允许角色：root, admin, engineer
    """
    if not file.filename.endswith('.zip'):
        raise HTTPException(status_code=400, detail="只支持ZIP格式文件")
    
    # 保存到临时文件
    with tempfile.NamedTemporaryFile(delete=False, suffix='.zip') as tmp:
        content = await file.read()
        tmp.write(content)
        tmp_path = Path(tmp.name)
    
    try:
        # 验证ZIP结构
        validation = validate_zip_structure(tmp_path)
        
        return {
            "success": True,
            "filename": file.filename,
            "file_size": len(content),
            "validation": validation
        }
    finally:
        # 清理临时文件
        tmp_path.unlink(missing_ok=True)


@router.post("/upload")
async def upload_data_package(
    subject_id: str = Form(...),
    file: UploadFile = File(...),
    backup: bool = Form(True),
    current_user: User = Depends(require_engineer),
    db: Session = Depends(get_db)
):
    """
    上传并导入ZIP数据包
    
    允许角色：root, admin, engineer
    
    参数：
    - subject_id: 目标学科ID
    - file: ZIP文件
    - backup: 是否在导入前创建备份（默认True）
    
    ZIP包格式要求：
    - 必须包含 entities/ 或 relations/ 目录
    - 实体JSON必需字段: identifier, title, type
    - 关系JSON必需字段: source, target, relationName
    """
    if not file.filename.endswith('.zip'):
        raise HTTPException(status_code=400, detail="只支持ZIP格式文件")
    
    # 检查学科是否存在
    subject_config = SUBJECT_CONFIG.get(subject_id)
    if not subject_config:
        raise HTTPException(status_code=404, detail=f"学科不存在: {subject_id}")
    
    data_dir = DATA_ROOT / subject_config['data_dir']
    
    # 保存到临时文件
    with tempfile.NamedTemporaryFile(delete=False, suffix='.zip') as tmp:
        content = await file.read()
        tmp.write(content)
        tmp_path = Path(tmp.name)
    
    try:
        # 验证ZIP结构
        validation = validate_zip_structure(tmp_path)
        
        if not validation["valid"]:
            return {
                "success": False,
                "message": "数据包验证失败",
                "errors": validation["errors"],
                "warnings": validation["warnings"]
            }
        
        # 创建备份（如果需要）
        backup_file = None
        if backup and data_dir.exists():
            data_dir_name = Path(subject_config['data_dir']).name
            backup_dir = SNAPSHOT_DIR / data_dir_name
            backup_dir.mkdir(parents=True, exist_ok=True)
            
            timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
            backup_file = backup_dir / f"pre_upload_backup_{timestamp}.tar.gz"
            
            with tarfile.open(backup_file, "w:gz") as tar:
                entities_dir = data_dir / "entities"
                relations_dir = data_dir / "relations"
                
                if entities_dir.exists():
                    for json_file in entities_dir.glob("*.json"):
                        tar.add(json_file, arcname=f"entities/{json_file.name}")
                
                if relations_dir.exists():
                    for json_file in relations_dir.glob("*.json"):
                        tar.add(json_file, arcname=f"relations/{json_file.name}")
        
        # 解压并导入数据
        prefix = validation.get("top_dir", "")
        if prefix:
            prefix = f"{prefix}/"
        
        entities_dir = data_dir / "entities"
        relations_dir = data_dir / "relations"
        entities_dir.mkdir(parents=True, exist_ok=True)
        relations_dir.mkdir(parents=True, exist_ok=True)
        
        imported_files = {"entities": [], "relations": []}
        
        with zipfile.ZipFile(tmp_path, 'r') as zf:
            # 导入实体文件
            for ef in validation["entity_files"]:
                with zf.open(ef["path"]) as src:
                    target_path = entities_dir / ef["filename"]
                    with open(target_path, 'wb') as dst:
                        dst.write(src.read())
                    imported_files["entities"].append(ef["filename"])
            
            # 导入关系文件
            for rf in validation["relation_files"]:
                with zf.open(rf["path"]) as src:
                    target_path = relations_dir / rf["filename"]
                    with open(target_path, 'wb') as dst:
                        dst.write(src.read())
                    imported_files["relations"].append(rf["filename"])
        
        # 标记需要同步HTML
        sync_record = db.query(SyncQueue).filter(SyncQueue.subject_id == subject_id).first()
        if sync_record:
            sync_record.needs_sync = True
            sync_record.last_edit_at = datetime.utcnow()
            sync_record.edit_count += 1
        else:
            sync_record = SyncQueue(
                subject_id=subject_id,
                needs_sync=True,
                last_edit_at=datetime.utcnow(),
                edit_count=1
            )
            db.add(sync_record)
        db.commit()
        
        # 记录操作日志
        log_operation(
            db, current_user, "upload_data_package", "subject", subject_id,
            details={
                "filename": file.filename,
                "file_size": len(content),
                "entity_files": len(imported_files["entities"]),
                "relation_files": len(imported_files["relations"]),
                "total_entities": validation["total_entities"],
                "total_relations": validation["total_relations"],
                "backup": str(backup_file) if backup_file else None,
                "warnings": validation["warnings"]
            }
        )
        
        return {
            "success": True,
            "message": f"数据包导入成功，共导入 {validation['total_entities']} 个实体和 {validation['total_relations']} 个关系",
            "subject_id": subject_id,
            "imported": {
                "entity_files": imported_files["entities"],
                "relation_files": imported_files["relations"],
                "total_entities": validation["total_entities"],
                "total_relations": validation["total_relations"]
            },
            "backup": str(backup_file) if backup_file else None,
            "warnings": validation["warnings"],
            "needs_sync": True
        }
        
    except Exception as e:
        raise HTTPException(status_code=500, detail=f"导入失败: {str(e)}")
    finally:
        # 清理临时文件
        tmp_path.unlink(missing_ok=True)


@router.get("/upload/format-spec")
async def get_upload_format_spec(
    current_user: User = Depends(require_engineer)
):
    """
    获取数据包格式规范说明
    
    允许角色：root, admin, engineer
    """
    return {
        "success": True,
        "format_spec": {
            "description": "知识图谱数据包格式规范",
            "structure": {
                "zip_structure": "subject-name.zip\n├── entities/\n│   ├── Type1.json\n│   └── Type2.json\n└── relations/\n    ├── Relation1.json\n    └── Relation2.json",
                "notes": [
                    "ZIP包必须包含 entities/ 或 relations/ 目录",
                    "也支持包含子目录的格式，如 subject-name/entities/",
                    "JSON文件命名建议使用实体类型名，如 Chapter.json, Section.json"
                ]
            },
            "entity_format": {
                "description": "实体JSON格式",
                "required_fields": ENTITY_REQUIRED_FIELDS,
                "optional_fields": ["description", "subject", "applicableLevel", "contentJson"],
                "formats": [
                    {
                        "name": "列表格式",
                        "example": '[{"identifier": "urn:xxx", "title": "标题", "type": "Chapter"}]'
                    },
                    {
                        "name": "对象格式",
                        "example": '{"entities": [{"identifier": "urn:xxx", "title": "标题", "type": "Chapter"}]}'
                    }
                ]
            },
            "relation_format": {
                "description": "关系JSON格式",
                "required_fields": RELATION_REQUIRED_FIELDS,
                "optional_fields": ["label", "evidence"],
                "formats": [
                    {
                        "name": "列表格式",
                        "example": '[{"source": "urn:a", "target": "urn:b", "relationName": "hasChild"}]'
                    },
                    {
                        "name": "对象格式",
                        "example": '{"relations": [{"source": "urn:a", "target": "urn:b", "relationName": "hasChild"}]}'
                    }
                ]
            },
            "available_subjects": [
                {"id": k, "name": v.get("display_name", k)}
                for k, v in SUBJECT_CONFIG.items()
            ]
        }
    }
