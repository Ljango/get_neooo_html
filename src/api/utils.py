# -*- coding: utf-8 -*-
"""
公共工具模块

提供API模块共享的工具函数，避免重复代码。
"""

# 标准库
import json
from pathlib import Path
from typing import List, Optional, Dict, Any, Tuple

# 第三方库
from sqlalchemy.orm import Session
from sqlalchemy import func

# 本地配置
import config
from config import DATA_ROOT


# ========== 学科配置相关 ==========

def get_subject_config(subject_id: str) -> Tuple[Optional[str], Optional[dict]]:
    """
    获取学科配置
    
    Args:
        subject_id: 学科ID或数据目录名
        
    Returns:
        (规范化的学科ID, 配置字典) 或 (None, None)
    """
    for name, cfg in config.SUBJECT_CONFIG.items():
        if name == subject_id or cfg.get('data_dir') == subject_id:
            return name, cfg
    return None, None


def get_data_dir(subject_id: str) -> Optional[Path]:
    """获取学科的数据目录路径"""
    _, subject_config = get_subject_config(subject_id)
    if not subject_config:
        return None
    return DATA_ROOT / subject_config['data_dir']


def get_entities_dir(subject_id: str) -> Optional[Path]:
    """获取学科的实体目录路径"""
    data_dir = get_data_dir(subject_id)
    if not data_dir:
        return None
    
    # 尝试多种目录名
    for dir_name in ["entities", "实体", "entity"]:
        entities_dir = data_dir / dir_name
        if entities_dir.exists():
            return entities_dir
    
    # 返回标准目录名（即使不存在）
    return data_dir / "entities"


def get_relations_dir(subject_id: str) -> Optional[Path]:
    """获取学科的关系目录路径"""
    data_dir = get_data_dir(subject_id)
    if not data_dir:
        return None
    
    # 尝试多种目录名
    for dir_name in ["relations", "relation", "关系"]:
        relations_dir = data_dir / dir_name
        if relations_dir.exists():
            return relations_dir
    
    # 返回标准目录名（即使不存在）
    return data_dir / "relations"


# ========== JSON数据加载 ==========

def load_json_file(file_path: Path) -> List[dict]:
    """
    加载JSON文件并返回标准化的列表格式
    
    支持两种格式：
    - 数组格式: [{...}, {...}]
    - 对象包装格式: {"entities": [...]} 或 {"relations": [...]}
    """
    try:
        with open(file_path, 'r', encoding='utf-8') as f:
            data = json.load(f)
        
        if isinstance(data, list):
            return data
        elif isinstance(data, dict):
            # 尝试常见的包装键名
            for key in ['entities', 'relations', 'relation', 'relationships', 
                       'items', 'data', 'records']:
                if key in data and isinstance(data[key], list):
                    return data[key]
            # 如果只有一个键且值是列表
            if len(data) == 1:
                val = list(data.values())[0]
                if isinstance(val, list):
                    return val
        return []
    except Exception:
        return []


def load_entities_from_json(subject_id: str, entity_type: Optional[str] = None) -> List[dict]:
    """
    从JSON文件加载实体
    
    Args:
        subject_id: 学科ID
        entity_type: 可选的实体类型过滤
        
    Returns:
        实体列表
    """
    entities_dir = get_entities_dir(subject_id)
    if not entities_dir or not entities_dir.exists():
        return []
    
    entities = []
    
    for json_file in entities_dir.glob("*.json"):
        # 如果指定了类型，只加载该类型
        if entity_type and json_file.stem != entity_type:
            continue
        
        items = load_json_file(json_file)
        for item in items:
            item['_entity_type'] = json_file.stem
        entities.extend(items)
    
    return entities


def load_relations_from_json(subject_id: str) -> List[dict]:
    """
    从JSON文件加载关系
    
    Args:
        subject_id: 学科ID
        
    Returns:
        关系列表
    """
    relations_dir = get_relations_dir(subject_id)
    if not relations_dir or not relations_dir.exists():
        return []
    
    relations = []
    
    for json_file in relations_dir.glob("*.json"):
        items = load_json_file(json_file)
        for item in items:
            item['_source_file'] = json_file.name
        relations.extend(items)
    
    return relations


# ========== 分页工具 ==========

def paginate(items: List, page: int, page_size: int) -> Dict[str, Any]:
    """
    对列表进行分页
    
    Args:
        items: 待分页的列表
        page: 页码（从1开始）
        page_size: 每页大小
        
    Returns:
        包含分页信息的字典
    """
    total = len(items)
    start = (page - 1) * page_size
    end = start + page_size
    page_items = items[start:end]
    
    return {
        "items": page_items,
        "total": total,
        "page": page,
        "page_size": page_size,
        "total_pages": (total + page_size - 1) // page_size if page_size > 0 else 0
    }


# ========== 审核统计 ==========

def get_review_statistics(
    db: Session, 
    subject_id: str, 
    target_type: Optional[str] = None,
    ReviewRecord = None,
    ReviewStatus = None
) -> Dict[str, int]:
    """
    获取审核统计信息
    
    Args:
        db: 数据库会话
        subject_id: 学科ID
        target_type: 可选的目标类型过滤（'entity' 或 'relation'）
        ReviewRecord: ReviewRecord模型类
        ReviewStatus: ReviewStatus枚举类
        
    Returns:
        状态统计字典
    """
    # 延迟导入以避免循环依赖
    if ReviewRecord is None:
        from .models import ReviewRecord
    if ReviewStatus is None:
        from .models import ReviewStatus
    
    query = db.query(
        ReviewRecord.status,
        func.count(ReviewRecord.id)
    ).filter(
        ReviewRecord.subject_id == subject_id
    )
    
    if target_type:
        query = query.filter(ReviewRecord.target_type == target_type)
    
    stats = query.group_by(ReviewRecord.status).all()
    
    # 初始化所有状态计数
    status_counts = {s.value: 0 for s in ReviewStatus}
    for status, count in stats:
        status_counts[status.value] = count
    
    return status_counts


# ========== 实体标题映射 ==========

def build_entity_title_map(subject_id: str) -> Dict[str, str]:
    """
    构建实体ID到标题的映射
    
    Args:
        subject_id: 学科ID
        
    Returns:
        {identifier: title} 映射字典
    """
    entities = load_entities_from_json(subject_id)
    return {
        e.get('identifier', ''): e.get('title', e.get('identifier', ''))
        for e in entities
        if e.get('identifier')
    }


# ========== 文件查找 ==========

def find_entity_file(subject_id: str, entity_type: str) -> Optional[Path]:
    """
    查找实体类型对应的JSON文件
    
    Args:
        subject_id: 学科ID
        entity_type: 实体类型
        
    Returns:
        文件路径或None
    """
    entities_dir = get_entities_dir(subject_id)
    if not entities_dir or not entities_dir.exists():
        return None
    
    # 直接匹配
    file_path = entities_dir / f"{entity_type}.json"
    if file_path.exists():
        return file_path
    
    # 模糊匹配
    for json_file in entities_dir.glob("*.json"):
        if entity_type.lower() in json_file.stem.lower():
            return json_file
    
    return None


def find_relation_file(subject_id: str, source_id: str, target_id: str, relation_name: str) -> Optional[Path]:
    """
    查找包含特定关系的JSON文件
    
    Args:
        subject_id: 学科ID
        source_id: 源实体ID
        target_id: 目标实体ID
        relation_name: 关系名称
        
    Returns:
        文件路径或None
    """
    relations_dir = get_relations_dir(subject_id)
    if not relations_dir or not relations_dir.exists():
        return None
    
    for json_file in relations_dir.glob("*.json"):
        relations = load_json_file(json_file)
        for r in relations:
            if (r.get('source') == source_id and 
                r.get('target') == target_id and
                r.get('relationName') == relation_name):
                return json_file
    
    return None
