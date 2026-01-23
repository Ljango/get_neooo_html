# -*- coding: utf-8 -*-
"""
Pydantic数据模型 - 请求和响应模型
"""

from datetime import datetime
from typing import Optional, List, Any
from pydantic import BaseModel, EmailStr
from .models import UserRole, ReviewStatus, VersionStatus


# ========== 通用响应 ==========

class ResponseBase(BaseModel):
    """基础响应"""
    success: bool = True
    message: str = "操作成功"


class ErrorResponse(BaseModel):
    """错误响应"""
    success: bool = False
    message: str
    detail: Optional[str] = None


# ========== 认证相关 ==========

class LoginRequest(BaseModel):
    """登录请求"""
    username: str
    password: str


class LoginResponse(BaseModel):
    """登录响应"""
    success: bool = True
    access_token: str
    token_type: str = "bearer"
    user: "UserInfo"


class ChangePasswordRequest(BaseModel):
    """修改密码请求"""
    old_password: str
    new_password: str


# ========== 用户相关 ==========

class UserInfo(BaseModel):
    """用户信息"""
    id: int
    username: str
    name: str
    roles: List[str] = ["teacher"]  # 多角色支持
    role: Optional[str] = None  # 向后兼容：最高权限角色
    email: Optional[str]
    is_active: bool
    must_change_password: bool
    created_at: datetime
    last_login: Optional[datetime]
    
    class Config:
        from_attributes = True
    
    @classmethod
    def from_user(cls, user):
        """从User对象创建UserInfo"""
        return cls(
            id=user.id,
            username=user.username,
            name=user.name,
            roles=user.get_roles(),
            role=user.get_highest_role(),
            email=user.email,
            is_active=user.is_active,
            must_change_password=user.must_change_password,
            created_at=user.created_at,
            last_login=user.last_login
        )


class UserCreate(BaseModel):
    """创建用户"""
    username: str
    password: str
    name: str
    roles: List[str] = ["teacher"]  # 多角色支持
    role: Optional[str] = None  # 向后兼容：单角色
    email: Optional[str] = None
    
    def get_roles_list(self) -> list:
        """获取角色列表（兼容单角色和多角色）"""
        if self.roles and len(self.roles) > 0:
            return self.roles
        if self.role:
            return [self.role]
        return ["teacher"]


class UserUpdate(BaseModel):
    """更新用户"""
    name: Optional[str] = None
    roles: Optional[List[str]] = None  # 多角色支持
    role: Optional[str] = None  # 向后兼容
    email: Optional[str] = None
    is_active: Optional[bool] = None
    
    def get_roles_list(self) -> Optional[list]:
        """获取角色列表（兼容单角色和多角色）"""
        if self.roles is not None:
            return self.roles
        if self.role is not None:
            return [self.role]
        return None


class UserListResponse(BaseModel):
    """用户列表响应"""
    success: bool = True
    users: List[UserInfo]
    total: int


# ========== 学科分配 ==========

class SubjectAssignment(BaseModel):
    """学科分配信息"""
    id: int
    subject_id: str
    entity_types: Optional[List[str]]
    assigned_at: datetime
    
    class Config:
        from_attributes = True


class AssignSubjectRequest(BaseModel):
    """分配学科请求"""
    user_id: int
    subject_id: str
    entity_types: Optional[List[str]] = None


class UserWithSubjects(UserInfo):
    """带学科分配的用户信息"""
    subjects: List[SubjectAssignment] = []


# ========== 审核相关 ==========

class EntityInfo(BaseModel):
    """实体信息"""
    identifier: str
    type: str
    title: str
    description: Optional[str] = None
    content_json: Optional[dict] = None
    review_status: Optional[ReviewStatus] = None
    review_comment: Optional[str] = None


class RelationInfo(BaseModel):
    """关系信息"""
    source: str
    target: str
    relation_name: str
    label: Optional[str] = None
    source_title: Optional[str] = None
    target_title: Optional[str] = None
    review_status: Optional[ReviewStatus] = None


class ReviewSubmitRequest(BaseModel):
    """提交审核请求"""
    subject_id: str
    target_type: str  # entity 或 relation
    target_id: str
    target_title: Optional[str] = None
    entity_type: Optional[str] = None
    status: ReviewStatus
    comment: Optional[str] = None
    field_name: Optional[str] = None
    original_value: Optional[str] = None
    suggested_value: Optional[str] = None


class ReviewRecordInfo(BaseModel):
    """审核记录信息"""
    id: int
    subject_id: str
    target_type: str
    target_id: str
    target_title: Optional[str]
    entity_type: Optional[str]
    status: ReviewStatus
    reviewer_name: Optional[str]
    comment: Optional[str]
    created_at: datetime
    resolved_at: Optional[datetime]
    
    class Config:
        from_attributes = True


class ReviewProgress(BaseModel):
    """审核进度"""
    subject_id: str
    total_entities: int
    total_relations: int
    reviewed_count: int
    approved_count: int
    needs_fix_count: int
    pending_count: int
    progress_percent: float


# ========== 版本相关 ==========

class VersionInfo(BaseModel):
    """版本信息"""
    id: int
    subject_id: str
    version: str
    base_version: Optional[str]
    status: VersionStatus
    entity_count: int
    relation_count: int
    description: Optional[str]
    created_at: datetime
    published_at: Optional[datetime]
    
    class Config:
        from_attributes = True


class CreateVersionRequest(BaseModel):
    """创建版本请求"""
    subject_id: str
    version: str
    base_version: Optional[str] = None
    description: Optional[str] = None


# ========== 统计相关 ==========

class SubjectStats(BaseModel):
    """学科统计"""
    subject_id: str
    display_name: str
    entity_count: int
    relation_count: int
    reviewed_count: int
    approved_count: int
    needs_fix_count: int


class GlobalStats(BaseModel):
    """全局统计"""
    total_subjects: int
    total_entities: int
    total_relations: int
    total_reviewed: int
    total_approved: int
    total_needs_fix: int
    subjects: List[SubjectStats]


# ========== 数据操作响应 ==========

class TaskResponse(BaseModel):
    """任务响应"""
    success: bool
    message: str
    task_id: Optional[str] = None
    output: Optional[str] = None
    details: Optional[dict] = None


# 更新前向引用
LoginResponse.model_rebuild()
