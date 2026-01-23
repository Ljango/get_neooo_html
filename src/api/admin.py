# -*- coding: utf-8 -*-
"""
管理API - 用户管理、学科分配、统计
"""

from typing import List, Optional
from fastapi import APIRouter, Depends, HTTPException, status, Query
from sqlalchemy.orm import Session
from sqlalchemy import func

from .database import get_db
from .models import User, UserSubject, ReviewRecord, UserRole, ReviewStatus
from .schemas import (
    UserInfo, UserCreate, UserUpdate, UserListResponse,
    AssignSubjectRequest, SubjectAssignment, UserWithSubjects,
    GlobalStats, SubjectStats, ResponseBase
)
from .deps import (
    get_current_user, require_admin, require_root,
    get_password_hash, log_operation
)
from config import SUBJECT_CONFIG, DATA_ROOT
from .review import load_entities_from_json, load_relations_from_json

router = APIRouter()


# ========== 用户管理 ==========

@router.get("/users", response_model=UserListResponse)
async def list_users(
    page: int = Query(1, ge=1),
    page_size: int = Query(20, ge=1, le=100),
    role_filter: Optional[str] = None,
    current_user: User = Depends(require_admin),
    db: Session = Depends(get_db)
):
    """获取用户列表（admin+）"""
    query = db.query(User)
    
    if role_filter:
        # 多角色支持：在JSON数组中搜索角色
        # SQLite使用json_each，其他数据库可能需要不同语法
        query = query.filter(User.roles.contains(f'"{role_filter}"'))
    
    total = query.count()
    users = query.order_by(User.created_at.desc()).offset(
        (page - 1) * page_size
    ).limit(page_size).all()
    
    return UserListResponse(
        users=[UserInfo.from_user(u) for u in users],
        total=total
    )


@router.get("/users/{user_id}")
async def get_user(
    user_id: int,
    current_user: User = Depends(require_admin),
    db: Session = Depends(get_db)
):
    """获取用户详情（包含学科分配）"""
    user = db.query(User).filter(User.id == user_id).first()
    if not user:
        raise HTTPException(status_code=404, detail="用户不存在")
    
    # 获取学科分配
    subjects = db.query(UserSubject).filter(UserSubject.user_id == user_id).all()
    
    user_info = UserInfo.from_user(user).model_dump()
    user_info['subjects'] = [
        {
            "id": s.id,
            "subject_id": s.subject_id,
            "entity_types": s.entity_types,
            "assigned_at": s.assigned_at.isoformat()
        }
        for s in subjects
    ]
    
    return {"success": True, "user": user_info}


@router.post("/users", response_model=UserInfo)
async def create_user(
    user_data: UserCreate,
    current_user: User = Depends(require_admin),
    db: Session = Depends(get_db)
):
    """创建用户（admin+）"""
    # 检查用户名是否已存在
    existing = db.query(User).filter(User.username == user_data.username).first()
    if existing:
        raise HTTPException(
            status_code=status.HTTP_400_BAD_REQUEST,
            detail="用户名已存在"
        )
    
    # 获取要设置的角色列表
    roles_list = user_data.get_roles_list()
    
    # admin不能创建root用户
    if "root" in roles_list and not current_user.has_role("root"):
        raise HTTPException(
            status_code=status.HTTP_403_FORBIDDEN,
            detail="无权创建root用户"
        )
    
    user = User(
        username=user_data.username,
        password_hash=get_password_hash(user_data.password),
        name=user_data.name,
        roles=roles_list,
        email=user_data.email,
        must_change_password=True
    )
    db.add(user)
    db.commit()
    db.refresh(user)
    
    log_operation(
        db, current_user, "create_user", "user", str(user.id),
        details={"username": user.username, "roles": user.get_roles()}
    )
    
    return UserInfo.from_user(user)


@router.put("/users/{user_id}", response_model=UserInfo)
async def update_user(
    user_id: int,
    user_data: UserUpdate,
    current_user: User = Depends(require_admin),
    db: Session = Depends(get_db)
):
    """更新用户（admin+）"""
    user = db.query(User).filter(User.id == user_id).first()
    if not user:
        raise HTTPException(status_code=404, detail="用户不存在")
    
    # admin不能修改root用户
    if user.has_role("root") and not current_user.has_role("root"):
        raise HTTPException(
            status_code=status.HTTP_403_FORBIDDEN,
            detail="无权修改root用户"
        )
    
    # 更新字段
    if user_data.name is not None:
        user.name = user_data.name
    if user_data.email is not None:
        user.email = user_data.email
    if user_data.is_active is not None:
        user.is_active = user_data.is_active
    
    # 处理角色更新（支持单角色和多角色）
    new_roles = user_data.get_roles_list()
    if new_roles is not None:
        # admin不能将用户提升为root
        if "root" in new_roles and not current_user.has_role("root"):
            raise HTTPException(
                status_code=status.HTTP_403_FORBIDDEN,
                detail="无权设置root角色"
            )
        user.roles = new_roles
    
    db.commit()
    db.refresh(user)
    
    log_operation(
        db, current_user, "update_user", "user", str(user.id),
        details=user_data.model_dump(exclude_none=True)
    )
    
    return UserInfo.from_user(user)


@router.delete("/users/{user_id}", response_model=ResponseBase)
async def delete_user(
    user_id: int,
    current_user: User = Depends(require_root),
    db: Session = Depends(get_db)
):
    """删除用户（仅root）"""
    user = db.query(User).filter(User.id == user_id).first()
    if not user:
        raise HTTPException(status_code=404, detail="用户不存在")
    
    # 不能删除自己
    if user.id == current_user.id:
        raise HTTPException(
            status_code=status.HTTP_400_BAD_REQUEST,
            detail="不能删除自己"
        )
    
    # 不能删除root用户
    if user.has_role("root"):
        raise HTTPException(
            status_code=status.HTTP_400_BAD_REQUEST,
            detail="不能删除root用户"
        )
    
    username = user.username
    db.delete(user)
    db.commit()
    
    log_operation(
        db, current_user, "delete_user", "user", str(user_id),
        details={"username": username}
    )
    
    return ResponseBase(message="用户已删除")


@router.post("/users/{user_id}/reset-password", response_model=ResponseBase)
async def reset_user_password(
    user_id: int,
    current_user: User = Depends(require_admin),
    db: Session = Depends(get_db)
):
    """重置用户密码（admin+）"""
    user = db.query(User).filter(User.id == user_id).first()
    if not user:
        raise HTTPException(status_code=404, detail="用户不存在")
    
    # admin不能重置root密码
    if user.has_role("root") and not current_user.has_role("root"):
        raise HTTPException(
            status_code=status.HTTP_403_FORBIDDEN,
            detail="无权重置root用户密码"
        )
    
    # 重置为默认密码
    default_password = "123456"
    user.password_hash = get_password_hash(default_password)
    user.must_change_password = True
    db.commit()
    
    log_operation(
        db, current_user, "reset_password", "user", str(user_id),
        details={"username": user.username}
    )
    
    return ResponseBase(message=f"密码已重置为: {default_password}")


# ========== 学科分配 ==========

@router.post("/assign", response_model=ResponseBase)
async def assign_subject(
    assign_data: AssignSubjectRequest,
    current_user: User = Depends(require_admin),
    db: Session = Depends(get_db)
):
    """分配学科给用户（admin+）"""
    # 检查用户是否存在
    user = db.query(User).filter(User.id == assign_data.user_id).first()
    if not user:
        raise HTTPException(status_code=404, detail="用户不存在")
    
    # 检查学科是否存在
    if assign_data.subject_id not in SUBJECT_CONFIG:
        raise HTTPException(status_code=400, detail="学科不存在")
    
    # 检查是否已分配
    existing = db.query(UserSubject).filter(
        UserSubject.user_id == assign_data.user_id,
        UserSubject.subject_id == assign_data.subject_id
    ).first()
    
    if existing:
        # 更新实体类型
        existing.entity_types = assign_data.entity_types
        db.commit()
        message = "学科分配已更新"
    else:
        # 新增分配
        assignment = UserSubject(
            user_id=assign_data.user_id,
            subject_id=assign_data.subject_id,
            entity_types=assign_data.entity_types
        )
        db.add(assignment)
        db.commit()
        message = "学科分配成功"
    
    log_operation(
        db, current_user, "assign_subject", "user_subject", str(assign_data.user_id),
        details={"subject_id": assign_data.subject_id, "entity_types": assign_data.entity_types}
    )
    
    return ResponseBase(message=message)


@router.delete("/assign/{assignment_id}", response_model=ResponseBase)
async def remove_assignment(
    assignment_id: int,
    current_user: User = Depends(require_admin),
    db: Session = Depends(get_db)
):
    """移除学科分配（admin+）"""
    assignment = db.query(UserSubject).filter(UserSubject.id == assignment_id).first()
    if not assignment:
        raise HTTPException(status_code=404, detail="分配记录不存在")
    
    user_id = assignment.user_id
    subject_id = assignment.subject_id
    
    db.delete(assignment)
    db.commit()
    
    log_operation(
        db, current_user, "remove_assignment", "user_subject", str(assignment_id),
        details={"user_id": user_id, "subject_id": subject_id}
    )
    
    return ResponseBase(message="分配已移除")


# ========== 统计 ==========

@router.get("/statistics", response_model=GlobalStats)
async def get_global_statistics(
    current_user: User = Depends(require_admin),
    db: Session = Depends(get_db)
):
    """获取全局统计（admin+）"""
    subjects_stats = []
    total_entities = 0
    total_relations = 0
    total_reviewed = 0
    total_approved = 0
    total_needs_fix = 0
    
    for subject_id, config in SUBJECT_CONFIG.items():
        entities = load_entities_from_json(subject_id)
        relations = load_relations_from_json(subject_id)
        
        entity_count = len(entities)
        relation_count = len(relations)
        
        # 查询审核状态
        stats = db.query(
            ReviewRecord.status,
            func.count(ReviewRecord.id)
        ).filter(
            ReviewRecord.subject_id == subject_id
        ).group_by(ReviewRecord.status).all()
        
        status_counts = {s.value: 0 for s in ReviewStatus}
        for s, count in stats:
            status_counts[s.value] = count
        
        reviewed = sum(status_counts.values())
        approved = status_counts.get('approved', 0)
        needs_fix = status_counts.get('needs_fix', 0)
        
        subjects_stats.append(SubjectStats(
            subject_id=subject_id,
            display_name=config.get('display_name', subject_id),
            entity_count=entity_count,
            relation_count=relation_count,
            reviewed_count=reviewed,
            approved_count=approved,
            needs_fix_count=needs_fix
        ))
        
        total_entities += entity_count
        total_relations += relation_count
        total_reviewed += reviewed
        total_approved += approved
        total_needs_fix += needs_fix
    
    return GlobalStats(
        total_subjects=len(SUBJECT_CONFIG),
        total_entities=total_entities,
        total_relations=total_relations,
        total_reviewed=total_reviewed,
        total_approved=total_approved,
        total_needs_fix=total_needs_fix,
        subjects=subjects_stats
    )


@router.get("/logs")
async def get_operation_logs(
    page: int = Query(1, ge=1),
    page_size: int = Query(50, ge=1, le=200),
    user_id: Optional[int] = None,
    action: Optional[str] = None,
    current_user: User = Depends(require_admin),
    db: Session = Depends(get_db)
):
    """获取操作日志（admin+）"""
    from .models import OperationLog
    
    query = db.query(OperationLog)
    
    if user_id:
        query = query.filter(OperationLog.user_id == user_id)
    if action:
        query = query.filter(OperationLog.action == action)
    
    total = query.count()
    logs = query.order_by(OperationLog.created_at.desc()).offset(
        (page - 1) * page_size
    ).limit(page_size).all()
    
    result = []
    for log in logs:
        result.append({
            "id": log.id,
            "user_id": log.user_id,
            "user_name": log.user.name if log.user else None,
            "action": log.action,
            "target_type": log.target_type,
            "target_id": log.target_id,
            "details": log.details,
            "ip_address": log.ip_address,
            "created_at": log.created_at.isoformat()
        })
    
    return {
        "success": True,
        "logs": result,
        "total": total,
        "page": page,
        "page_size": page_size
    }
