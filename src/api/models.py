# -*- coding: utf-8 -*-
"""
数据库模型定义
"""

from datetime import datetime
from sqlalchemy import Column, Integer, String, Text, Boolean, DateTime, Enum, ForeignKey, JSON
from sqlalchemy.orm import relationship
from .database import Base
import enum


class UserRole(str, enum.Enum):
    """用户角色枚举"""
    root = "root"
    admin = "admin"
    teacher = "teacher"
    engineer = "engineer"  # 图谱工程师：可上传数据包和审核数据


# 角色权限层级（用于权限检查）
ROLE_HIERARCHY = {
    "root": 100,      # 最高权限
    "admin": 80,
    "engineer": 60,   # 图谱工程师
    "teacher": 40,
}


class ReviewStatus(str, enum.Enum):
    """审核状态枚举"""
    pending = "pending"
    approved = "approved"
    rejected = "rejected"
    needs_fix = "needs_fix"


class VersionStatus(str, enum.Enum):
    """版本状态枚举"""
    draft = "draft"
    in_review = "in_review"
    approved = "approved"
    published = "published"


class User(Base):
    """用户表"""
    __tablename__ = "users"
    
    id = Column(Integer, primary_key=True, autoincrement=True)
    username = Column(String(50), unique=True, nullable=False, index=True)
    password_hash = Column(String(255), nullable=False)
    name = Column(String(100), nullable=False)
    # 多角色支持：存储角色列表，如 ["teacher", "engineer"]
    roles = Column(JSON, default=["teacher"])
    email = Column(String(100))
    created_at = Column(DateTime, default=datetime.utcnow)
    last_login = Column(DateTime)
    is_active = Column(Boolean, default=True)
    must_change_password = Column(Boolean, default=True)
    
    # 关系
    subjects = relationship("UserSubject", back_populates="user", cascade="all, delete-orphan")
    reviews = relationship("ReviewRecord", back_populates="reviewer")
    logs = relationship("OperationLog", back_populates="user")
    
    # ===== 角色辅助方法 =====
    
    def get_roles(self) -> list:
        """获取用户角色列表（兼容旧数据）"""
        if self.roles is None:
            return ["teacher"]
        if isinstance(self.roles, str):
            return [self.roles]
        return self.roles
    
    def has_role(self, role: str) -> bool:
        """检查用户是否拥有指定角色"""
        return role in self.get_roles()
    
    def has_any_role(self, *roles) -> bool:
        """检查用户是否拥有任意一个指定角色"""
        user_roles = self.get_roles()
        return any(r in user_roles for r in roles)
    
    def get_highest_role(self) -> str:
        """获取用户最高权限的角色"""
        user_roles = self.get_roles()
        if not user_roles:
            return "teacher"
        return max(user_roles, key=lambda r: ROLE_HIERARCHY.get(r, 0))
    
    def can_upload_data(self) -> bool:
        """检查用户是否有上传数据包权限"""
        return self.has_any_role("root", "admin", "engineer")
    
    def can_review(self) -> bool:
        """检查用户是否有审核权限"""
        return self.has_any_role("root", "admin", "teacher", "engineer")
    
    def can_manage_users(self) -> bool:
        """检查用户是否有用户管理权限"""
        return self.has_any_role("root", "admin")
    
    @property
    def role(self):
        """向后兼容：返回最高权限角色"""
        return self.get_highest_role()


class UserSubject(Base):
    """用户-学科分配表"""
    __tablename__ = "user_subjects"
    
    id = Column(Integer, primary_key=True, autoincrement=True)
    user_id = Column(Integer, ForeignKey("users.id"), nullable=False)
    subject_id = Column(String(50), nullable=False, index=True)
    entity_types = Column(JSON)  # 分配的实体类型列表
    assigned_at = Column(DateTime, default=datetime.utcnow)
    
    # 关系
    user = relationship("User", back_populates="subjects")


class ReviewRecord(Base):
    """审核记录表"""
    __tablename__ = "review_records"
    
    id = Column(Integer, primary_key=True, autoincrement=True)
    subject_id = Column(String(50), nullable=False, index=True)
    target_type = Column(String(20), nullable=False)  # entity 或 relation
    target_id = Column(String(255), nullable=False)
    target_title = Column(String(500))
    entity_type = Column(String(100))  # 实体类型，如 Chapter, Section
    field_name = Column(String(100))
    original_value = Column(Text)
    suggested_value = Column(Text)
    status = Column(Enum(ReviewStatus), default=ReviewStatus.pending, index=True)
    reviewer_id = Column(Integer, ForeignKey("users.id"))
    comment = Column(Text)
    created_at = Column(DateTime, default=datetime.utcnow)
    resolved_at = Column(DateTime)
    
    # 关系
    reviewer = relationship("User", back_populates="reviews")


class DataVersion(Base):
    """数据版本表"""
    __tablename__ = "data_versions"
    
    id = Column(Integer, primary_key=True, autoincrement=True)
    subject_id = Column(String(50), nullable=False, index=True)
    version = Column(String(20), nullable=False)
    base_version = Column(String(20))
    status = Column(Enum(VersionStatus), default=VersionStatus.draft)
    entity_count = Column(Integer, default=0)
    relation_count = Column(Integer, default=0)
    description = Column(Text)
    created_by = Column(Integer, ForeignKey("users.id"))
    created_at = Column(DateTime, default=datetime.utcnow)
    published_at = Column(DateTime)
    
    # 联合唯一索引
    __table_args__ = (
        {"mysql_charset": "utf8mb4"},
    )


class OperationLog(Base):
    """操作日志表"""
    __tablename__ = "operation_logs"
    
    id = Column(Integer, primary_key=True, autoincrement=True)
    user_id = Column(Integer, ForeignKey("users.id"))
    action = Column(String(100), nullable=False)
    target_type = Column(String(50))
    target_id = Column(String(255))
    details = Column(JSON)
    ip_address = Column(String(45))
    created_at = Column(DateTime, default=datetime.utcnow, index=True)
    
    # 关系
    user = relationship("User", back_populates="logs")


class SyncQueue(Base):
    """数据同步队列表 - 记录需要同步的学科"""
    __tablename__ = "sync_queue"
    
    id = Column(Integer, primary_key=True, autoincrement=True)
    subject_id = Column(String(50), unique=True, nullable=False, index=True)
    needs_sync = Column(Boolean, default=True)
    last_edit_at = Column(DateTime, default=datetime.utcnow)
    last_sync_at = Column(DateTime)
    edit_count = Column(Integer, default=1)  # 自上次同步以来的编辑次数
    created_at = Column(DateTime, default=datetime.utcnow)
