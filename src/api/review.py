# -*- coding: utf-8 -*-
"""
审核API - 实体/关系审核功能
"""

# 标准库
import json
import re
from datetime import datetime
from pathlib import Path
from typing import List, Optional

# 第三方库
from fastapi import APIRouter, Depends, HTTPException, Query
from sqlalchemy.orm import Session
from sqlalchemy import func

# 本地配置
import config
from config import DATA_ROOT

# 本地模块
from .database import get_db
from .models import User, UserSubject, ReviewRecord, ReviewStatus, UserRole
from .schemas import (
    EntityInfo, RelationInfo, ReviewSubmitRequest,
    ReviewRecordInfo, ReviewProgress, ResponseBase, SubjectStats
)
from .deps import get_current_user, require_teacher, log_operation
from .utils import (
    get_subject_config, get_entities_dir, get_relations_dir,
    load_json_file, paginate, get_review_statistics,
    build_entity_title_map
)

router = APIRouter()


# 保留原函数签名以保持向后兼容，内部使用utils模块
def load_entities_from_json(subject_id: str, entity_type: str = None) -> List[dict]:
    """从JSON文件加载实体"""
    from .utils import load_entities_from_json as _load_entities
    return _load_entities(subject_id, entity_type)


def load_relations_from_json(subject_id: str) -> List[dict]:
    """从JSON文件加载关系"""
    from .utils import load_relations_from_json as _load_relations
    return _load_relations(subject_id)


@router.get("/subjects")
async def get_my_subjects(
    current_user: User = Depends(get_current_user),
    db: Session = Depends(get_db)
):
    """获取当前用户负责的学科列表"""
    # root、admin和engineer可以看到所有学科
    if current_user.has_any_role("root", "admin", "engineer"):
        subjects = []
        for name, subject_config in config.SUBJECT_CONFIG.items():
            subjects.append({
                "subject_id": name,
                "display_name": subject_config.get('display_name', name),
                "icon": subject_config.get('icon', '📚'),
                "data_dir": subject_config.get('data_dir'),
                "entity_types": None  # 全部类型
            })
        return {"success": True, "subjects": subjects}
    
    # teacher只能看到分配的学科
    user_subjects = db.query(UserSubject).filter(
        UserSubject.user_id == current_user.id
    ).all()
    
    subjects = []
    for us in user_subjects:
        subject_config = config.SUBJECT_CONFIG.get(us.subject_id, {})
        subjects.append({
            "subject_id": us.subject_id,
            "display_name": subject_config.get('display_name', us.subject_id),
            "icon": subject_config.get('icon', '📚'),
            "data_dir": subject_config.get('data_dir'),
            "entity_types": us.entity_types
        })
    
    return {"success": True, "subjects": subjects}


@router.get("/entity-types/{subject_id}")
async def get_entity_types(
    subject_id: str,
    current_user: User = Depends(get_current_user)
):
    """获取学科的所有实体类型列表（从文件名推断，按配置排序）"""
    # 查找学科配置
    subject_config = config.SUBJECT_CONFIG.get(subject_id)
    if not subject_config:
        # 尝试通过data_dir匹配
        for name, cfg in config.SUBJECT_CONFIG.items():
            if cfg.get('data_dir') == subject_id:
                subject_config = cfg
                break
    
    if not subject_config:
        return {"success": False, "types": [], "message": "学科不存在"}
    
    data_dir = DATA_ROOT / subject_config['data_dir']
    entities_dir = data_dir / "entities"
    
    if not entities_dir.exists():
        entities_dir = data_dir / "实体"
    
    if not entities_dir.exists():
        return {"success": True, "types": []}
    
    # 从JSON文件名获取实体类型（使用字典去重）
    types_dict = {}
    for json_file in entities_dir.glob("*.json"):
        type_name = json_file.stem
        
        # 跳过已处理的类型（去重）
        if type_name in types_dict:
            continue
        
        # 获取该类型的实体数量
        try:
            with open(json_file, 'r', encoding='utf-8') as f:
                file_data = json.load(f)
                count = len(file_data) if isinstance(file_data, list) else len(file_data.get('entities', []))
        except Exception:
            count = 0
        
        # 获取排序优先级
        order = config.ENTITY_TYPE_ORDER.get(type_name, config.ENTITY_TYPE_ORDER.get('_default', 100))
        
        types_dict[type_name] = {
            "type": type_name,
            "count": count,
            "order": order
        }
    
    types = list(types_dict.values())
    
    # 按配置的优先级排序，相同优先级按字母排序
    types.sort(key=lambda x: (x['order'], x['type']))
    
    return {"success": True, "types": types}


@router.get("/entities/{subject_id}")
async def get_entities(
    subject_id: str,
    entity_type: Optional[str] = None,
    page: int = Query(1, ge=1),
    page_size: int = Query(50, ge=1, le=200),
    status_filter: Optional[str] = None,
    search: Optional[str] = None,
    current_user: User = Depends(get_current_user),
    db: Session = Depends(get_db)
):
    """获取学科的实体列表，支持搜索和筛选"""
    # 加载实体
    entities = load_entities_from_json(subject_id, entity_type)
    
    # 搜索过滤（在其他过滤之前）
    if search:
        search_lower = search.lower().strip()
        entities = [e for e in entities if 
            search_lower in e.get('title', '').lower() or 
            search_lower in e.get('identifier', '').lower() or
            search_lower in e.get('description', '').lower()]
    
    # 获取审核状态
    review_map = {}
    reviews = db.query(ReviewRecord).filter(
        ReviewRecord.subject_id == subject_id,
        ReviewRecord.target_type == "entity"
    ).all()
    
    for r in reviews:
        review_map[r.target_id] = {
            "status": r.status.value,
            "comment": r.comment
        }
    
    # 组装结果
    result = []
    for e in entities:
        identifier = e.get('identifier', '')
        review_info = review_map.get(identifier, {})
        
        # 提取水平/等级信息
        level_info = None
        content_json = e.get('contentJson', {})
        if content_json and isinstance(content_json, dict):
            level_info = content_json.get('standard')
        if not level_info:
            # 从标题中提取水平信息
            title = e.get('title', '')
            import re
            match = re.search(r'水平[一二三123]|[Ll]evel\s*[123]', title)
            if match:
                level_info = match.group(0)
        
        entity_info = {
            "identifier": identifier,
            "type": e.get('type', e.get('_entity_type', '')),
            "title": e.get('title', ''),
            "description": e.get('description', ''),
            "level": level_info,
            "review_status": review_info.get('status'),
            "review_comment": review_info.get('comment')
        }
        
        # 状态过滤
        if status_filter:
            if status_filter == "pending" and entity_info["review_status"] is not None:
                continue
            elif status_filter != "pending" and entity_info["review_status"] != status_filter:
                continue
        
        result.append(entity_info)
    
    # 分页
    total = len(result)
    start = (page - 1) * page_size
    end = start + page_size
    page_data = result[start:end]
    
    return {
        "success": True,
        "entities": page_data,
        "total": total,
        "page": page,
        "page_size": page_size
    }


@router.get("/relations/{subject_id}")
async def get_relations(
    subject_id: str,
    page: int = Query(1, ge=1),
    page_size: int = Query(50, ge=1, le=200),
    status_filter: Optional[str] = None,
    search: Optional[str] = None,
    current_user: User = Depends(get_current_user),
    db: Session = Depends(get_db)
):
    """获取学科的关系列表，支持搜索和筛选"""
    # 加载关系
    relations = load_relations_from_json(subject_id)
    
    # 加载实体用于显示标题
    entities = load_entities_from_json(subject_id)
    entity_titles = {e.get('identifier', ''): e.get('title', '') for e in entities}
    
    # 搜索过滤（在组装结果时应用，因为需要entity_titles）
    search_lower = search.lower().strip() if search else None
    
    # 获取审核状态
    review_map = {}
    reviews = db.query(ReviewRecord).filter(
        ReviewRecord.subject_id == subject_id,
        ReviewRecord.target_type == "relation"
    ).all()
    
    for r in reviews:
        review_map[r.target_id] = {
            "status": r.status.value,
            "comment": r.comment
        }
    
    # 组装结果
    result = []
    for r in relations:
        source = r.get('source', '')
        target = r.get('target', '')
        source_title = entity_titles.get(source, source)
        target_title = entity_titles.get(target, target)
        relation_name = r.get('relationName', '')
        
        # 搜索过滤
        if search_lower:
            if not (search_lower in source_title.lower() or 
                    search_lower in target_title.lower() or
                    search_lower in source.lower() or
                    search_lower in target.lower() or
                    search_lower in relation_name.lower()):
                continue
        
        # 用source+target作为关系ID
        relation_id = f"{source}|{target}|{relation_name}"
        review_info = review_map.get(relation_id, {})
        
        relation_info = {
            "source": source,
            "target": target,
            "relation_name": relation_name,
            "label": r.get('label', ''),
            "source_title": source_title,
            "target_title": target_title,
            "review_status": review_info.get('status'),
            "review_comment": review_info.get('comment')
        }
        
        # 状态过滤
        if status_filter:
            if status_filter == "pending" and relation_info["review_status"] is not None:
                continue
            elif status_filter != "pending" and relation_info["review_status"] != status_filter:
                continue
        
        result.append(relation_info)
    
    # 分页
    total = len(result)
    start = (page - 1) * page_size
    end = start + page_size
    page_data = result[start:end]
    
    return {
        "success": True,
        "relations": page_data,
        "total": total,
        "page": page,
        "page_size": page_size
    }


@router.get("/entity/{subject_id}/{identifier:path}")
async def get_entity_detail(
    subject_id: str,
    identifier: str,
    current_user: User = Depends(get_current_user),
    db: Session = Depends(get_db)
):
    """获取实体详情"""
    entities = load_entities_from_json(subject_id)
    relations = load_relations_from_json(subject_id)
    
    # 查找实体
    entity = None
    for e in entities:
        if e.get('identifier') == identifier:
            entity = e
            break
    
    if not entity:
        raise HTTPException(status_code=404, detail="实体不存在")
    
    # 构建实体标题映射
    entity_titles = {e.get('identifier', ''): e.get('title', '') for e in entities}
    
    # 查找相关关系
    related_relations = []
    for r in relations:
        if r.get('source') == identifier or r.get('target') == identifier:
            related_relations.append({
                "source": r.get('source'),
                "target": r.get('target'),
                "relation_name": r.get('relationName', ''),
                "label": r.get('label', ''),
                "source_title": entity_titles.get(r.get('source', ''), ''),
                "target_title": entity_titles.get(r.get('target', ''), ''),
                "direction": "outgoing" if r.get('source') == identifier else "incoming"
            })
    
    # 获取审核记录
    review = db.query(ReviewRecord).filter(
        ReviewRecord.subject_id == subject_id,
        ReviewRecord.target_type == "entity",
        ReviewRecord.target_id == identifier
    ).first()
    
    return {
        "success": True,
        "entity": {
            "identifier": entity.get('identifier'),
            "type": entity.get('type', entity.get('_entity_type', '')),
            "title": entity.get('title', ''),
            "description": entity.get('description', ''),
            "content_json": entity.get('contentJson', {}),
            "subject": entity.get('subject', ''),
            "applicable_level": entity.get('applicableLevel', '')
        },
        "relations": related_relations,
        "review": {
            "status": review.status.value if review else None,
            "comment": review.comment if review else None,
            "reviewer": review.reviewer.name if review and review.reviewer else None,
            "created_at": review.created_at.isoformat() if review else None
        } if review else None
    }


@router.post("/submit", response_model=ResponseBase)
async def submit_review(
    review_data: ReviewSubmitRequest,
    current_user: User = Depends(get_current_user),
    db: Session = Depends(get_db)
):
    """提交审核结果"""
    # 构建target_id
    target_id = review_data.target_id
    if review_data.target_type == "relation" and "|" not in target_id:
        # 如果是关系但没有组合ID，尝试从请求构建
        pass
    
    # 查找或创建审核记录
    existing = db.query(ReviewRecord).filter(
        ReviewRecord.subject_id == review_data.subject_id,
        ReviewRecord.target_type == review_data.target_type,
        ReviewRecord.target_id == target_id
    ).first()
    
    if existing:
        # 更新现有记录
        existing.status = review_data.status
        existing.comment = review_data.comment
        existing.reviewer_id = current_user.id
        existing.resolved_at = datetime.utcnow()
        if review_data.field_name:
            existing.field_name = review_data.field_name
        if review_data.original_value:
            existing.original_value = review_data.original_value
        if review_data.suggested_value:
            existing.suggested_value = review_data.suggested_value
    else:
        # 创建新记录
        record = ReviewRecord(
            subject_id=review_data.subject_id,
            target_type=review_data.target_type,
            target_id=target_id,
            target_title=review_data.target_title,
            entity_type=review_data.entity_type,
            status=review_data.status,
            reviewer_id=current_user.id,
            comment=review_data.comment,
            field_name=review_data.field_name,
            original_value=review_data.original_value,
            suggested_value=review_data.suggested_value,
            resolved_at=datetime.utcnow()
        )
        db.add(record)
    
    db.commit()
    
    # 记录操作日志
    log_operation(
        db, current_user, "submit_review",
        review_data.target_type, target_id,
        details={"status": review_data.status.value, "subject": review_data.subject_id}
    )
    
    return ResponseBase(message="审核提交成功")


@router.get("/progress/{subject_id}", response_model=ReviewProgress)
async def get_review_progress(
    subject_id: str,
    current_user: User = Depends(get_current_user),
    db: Session = Depends(get_db)
):
    """获取审核进度（百分比基于实体审核数量）"""
    # 加载数据统计
    entities = load_entities_from_json(subject_id)
    relations = load_relations_from_json(subject_id)
    
    total_entities = len(entities)
    total_relations = len(relations)
    
    # 分别统计实体和关系的审核状态
    entity_stats = db.query(
        ReviewRecord.status,
        func.count(ReviewRecord.id)
    ).filter(
        ReviewRecord.subject_id == subject_id,
        ReviewRecord.target_type == "entity"
    ).group_by(ReviewRecord.status).all()
    
    relation_stats = db.query(
        ReviewRecord.status,
        func.count(ReviewRecord.id)
    ).filter(
        ReviewRecord.subject_id == subject_id,
        ReviewRecord.target_type == "relation"
    ).group_by(ReviewRecord.status).all()
    
    # 实体审核统计
    entity_status_counts = {s.value: 0 for s in ReviewStatus}
    for status, count in entity_stats:
        entity_status_counts[status.value] = count
    
    # 关系审核统计
    relation_status_counts = {s.value: 0 for s in ReviewStatus}
    for status, count in relation_stats:
        relation_status_counts[status.value] = count
    
    # 总审核数（实体+关系）
    entity_reviewed_count = sum(entity_status_counts.values())
    relation_reviewed_count = sum(relation_status_counts.values())
    reviewed_count = entity_reviewed_count + relation_reviewed_count
    
    # 通过和需修改的总数
    approved_count = entity_status_counts.get('approved', 0) + relation_status_counts.get('approved', 0)
    needs_fix_count = entity_status_counts.get('needs_fix', 0) + relation_status_counts.get('needs_fix', 0)
    
    # 待审核数
    pending_count = (total_entities - entity_reviewed_count) + (total_relations - relation_reviewed_count)
    
    # 进度百分比：只基于实体审核数量
    progress = (entity_reviewed_count / total_entities * 100) if total_entities > 0 else 0
    
    return ReviewProgress(
        subject_id=subject_id,
        total_entities=total_entities,
        total_relations=total_relations,
        reviewed_count=reviewed_count,
        approved_count=approved_count,
        needs_fix_count=needs_fix_count,
        pending_count=pending_count,
        progress_percent=round(progress, 1)
    )


@router.get("/records/{subject_id}")
async def get_review_records(
    subject_id: str,
    page: int = Query(1, ge=1),
    page_size: int = Query(50, ge=1, le=200),
    status_filter: Optional[str] = None,
    current_user: User = Depends(get_current_user),
    db: Session = Depends(get_db)
):
    """获取审核记录列表"""
    query = db.query(ReviewRecord).filter(ReviewRecord.subject_id == subject_id)
    
    if status_filter:
        query = query.filter(ReviewRecord.status == status_filter)
    
    total = query.count()
    records = query.order_by(ReviewRecord.created_at.desc()).offset(
        (page - 1) * page_size
    ).limit(page_size).all()
    
    result = []
    for r in records:
        result.append({
            "id": r.id,
            "subject_id": r.subject_id,
            "target_type": r.target_type,
            "target_id": r.target_id,
            "target_title": r.target_title,
            "entity_type": r.entity_type,
            "status": r.status.value,
            "reviewer_name": r.reviewer.name if r.reviewer else None,
            "comment": r.comment,
            "created_at": r.created_at.isoformat(),
            "resolved_at": r.resolved_at.isoformat() if r.resolved_at else None
        })
    
    return {
        "success": True,
        "records": result,
        "total": total,
        "page": page,
        "page_size": page_size
    }


@router.get("/entity-graph/{subject_id}/{identifier:path}")
async def get_entity_graph(
    subject_id: str,
    identifier: str,
    depth: int = Query(1, ge=1, le=2),
    max_nodes: int = Query(50, ge=10, le=200),
    current_user: User = Depends(get_current_user)
):
    """获取实体关联图谱数据（用于可视化）"""
    entities = load_entities_from_json(subject_id)
    relations = load_relations_from_json(subject_id)
    
    # 构建实体映射
    entity_map = {e.get('identifier', ''): e for e in entities}
    
    # 中心节点
    center_entity = entity_map.get(identifier)
    if not center_entity:
        raise HTTPException(status_code=404, detail="实体不存在")
    
    # 收集节点和边
    nodes = {identifier: center_entity}
    links = []
    
    # 1度关系
    for r in relations:
        source = r.get('source', '')
        target = r.get('target', '')
        
        if source == identifier or target == identifier:
            # 添加关系
            links.append({
                "source": source,
                "target": target,
                "relationName": r.get('relationName', ''),
                "label": r.get('label', '')
            })
            
            # 添加关联节点
            other_id = target if source == identifier else source
            if other_id in entity_map and other_id not in nodes:
                nodes[other_id] = entity_map[other_id]
    
    # 2度关系（可选）
    if depth >= 2 and len(nodes) < max_nodes:
        for r in relations:
            source = r.get('source', '')
            target = r.get('target', '')
            
            # 如果source或target在当前节点集中，扩展
            if source in nodes and target not in nodes:
                if target in entity_map:
                    nodes[target] = entity_map[target]
                    links.append({
                        "source": source,
                        "target": target,
                        "relationName": r.get('relationName', ''),
                        "label": r.get('label', '')
                    })
                    
                    if len(nodes) >= max_nodes:
                        break
            
            elif target in nodes and source not in nodes:
                if source in entity_map:
                    nodes[source] = entity_map[source]
                    links.append({
                        "source": source,
                        "target": target,
                        "relationName": r.get('relationName', ''),
                        "label": r.get('label', '')
                    })
                    
                    if len(nodes) >= max_nodes:
                        break
    
    # 转换为D3格式
    d3_nodes = []
    for node_id, node_data in nodes.items():
        d3_nodes.append({
            "id": node_id,
            "label": node_data.get('title', node_id),
            "type": node_data.get('type', node_data.get('_entity_type', '')),
            "is_center": node_id == identifier,
            "description": node_data.get('description', '')[:100]  # 限制长度
        })
    
    return {
        "success": True,
        "center_id": identifier,
        "nodes": d3_nodes,
        "links": links,
        "total_nodes": len(d3_nodes),
        "total_links": len(links)
    }
