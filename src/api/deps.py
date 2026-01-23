# -*- coding: utf-8 -*-
"""
依赖注入模块 - 权限检查、用户认证
"""

import os
import hashlib
import secrets
from datetime import datetime, timedelta
from typing import Optional
from fastapi import Depends, HTTPException, status, Request
from fastapi.security import HTTPBearer, HTTPAuthorizationCredentials
from jose import JWTError, jwt
from sqlalchemy.orm import Session
from .database import get_db
from .models import User, UserRole

# JWT配置
SECRET_KEY = os.getenv("JWT_SECRET_KEY", "your-secret-key-change-in-production")
ALGORITHM = "HS256"
ACCESS_TOKEN_EXPIRE_HOURS = 24

# Bearer token
security = HTTPBearer(auto_error=False)


def verify_password(plain_password: str, hashed_password: str) -> bool:
    """验证密码 - 使用 PBKDF2-SHA256"""
    if not hashed_password or "$" not in hashed_password:
        return False
    try:
        # 格式: pbkdf2$iterations$salt$hash
        parts = hashed_password.split("$")
        if len(parts) != 4 or parts[0] != "pbkdf2":
            return False
        iterations = int(parts[1])
        salt = parts[2]
        stored_hash = parts[3]
        
        # 计算输入密码的哈希
        computed_hash = hashlib.pbkdf2_hmac(
            'sha256',
            plain_password.encode('utf-8'),
            salt.encode('utf-8'),
            iterations
        ).hex()
        
        return secrets.compare_digest(computed_hash, stored_hash)
    except Exception:
        return False


def get_password_hash(password: str) -> str:
    """生成密码哈希 - 使用 PBKDF2-SHA256"""
    iterations = 100000
    salt = secrets.token_hex(16)
    hash_value = hashlib.pbkdf2_hmac(
        'sha256',
        password.encode('utf-8'),
        salt.encode('utf-8'),
        iterations
    ).hex()
    return f"pbkdf2${iterations}${salt}${hash_value}"


def create_access_token(data: dict, expires_delta: Optional[timedelta] = None) -> str:
    """创建JWT token"""
    to_encode = data.copy()
    if expires_delta:
        expire = datetime.utcnow() + expires_delta
    else:
        expire = datetime.utcnow() + timedelta(hours=ACCESS_TOKEN_EXPIRE_HOURS)
    to_encode.update({"exp": expire})
    encoded_jwt = jwt.encode(to_encode, SECRET_KEY, algorithm=ALGORITHM)
    return encoded_jwt


def decode_token(token: str) -> Optional[dict]:
    """解码JWT token"""
    try:
        payload = jwt.decode(token, SECRET_KEY, algorithms=[ALGORITHM])
        return payload
    except JWTError:
        return None


async def get_current_user(
    credentials: HTTPAuthorizationCredentials = Depends(security),
    db: Session = Depends(get_db)
) -> User:
    """获取当前登录用户"""
    credentials_exception = HTTPException(
        status_code=status.HTTP_401_UNAUTHORIZED,
        detail="无效的认证凭证",
        headers={"WWW-Authenticate": "Bearer"},
    )
    
    if not credentials:
        raise credentials_exception
    
    token = credentials.credentials
    payload = decode_token(token)
    
    if payload is None:
        raise credentials_exception
    
    username: str = payload.get("sub")
    if username is None:
        raise credentials_exception
    
    user = db.query(User).filter(User.username == username).first()
    if user is None:
        raise credentials_exception
    
    if not user.is_active:
        raise HTTPException(
            status_code=status.HTTP_403_FORBIDDEN,
            detail="用户已被禁用"
        )
    
    return user


async def get_current_active_user(
    current_user: User = Depends(get_current_user)
) -> User:
    """获取当前活跃用户"""
    if not current_user.is_active:
        raise HTTPException(status_code=400, detail="用户未激活")
    return current_user


def require_role(*roles: UserRole):
    """角色权限装饰器工厂 - 支持多角色"""
    role_values = [r.value if isinstance(r, UserRole) else r for r in roles]
    
    async def role_checker(current_user: User = Depends(get_current_user)) -> User:
        # 使用新的多角色检查方法
        if not current_user.has_any_role(*role_values):
            raise HTTPException(
                status_code=status.HTTP_403_FORBIDDEN,
                detail=f"权限不足，需要 {role_values} 角色之一"
            )
        return current_user
    return role_checker


def require_permission(permission_check: str):
    """基于权限的检查器工厂"""
    async def permission_checker(current_user: User = Depends(get_current_user)) -> User:
        # 检查用户是否有指定权限
        if permission_check == "upload_data":
            has_perm = current_user.can_upload_data()
            perm_name = "上传数据包"
        elif permission_check == "review":
            has_perm = current_user.can_review()
            perm_name = "数据审核"
        elif permission_check == "manage_users":
            has_perm = current_user.can_manage_users()
            perm_name = "用户管理"
        else:
            has_perm = False
            perm_name = permission_check
        
        if not has_perm:
            raise HTTPException(
                status_code=status.HTTP_403_FORBIDDEN,
                detail=f"权限不足：需要{perm_name}权限"
            )
        return current_user
    return permission_checker


# 预定义权限检查器 - 支持多角色
require_teacher = require_role(UserRole.root, UserRole.admin, UserRole.teacher, UserRole.engineer)
require_admin = require_role(UserRole.root, UserRole.admin)
require_root = require_role(UserRole.root)
require_engineer = require_role(UserRole.root, UserRole.admin, UserRole.engineer)  # 可上传数据包

# 基于功能的权限检查器
require_upload_permission = require_permission("upload_data")
require_review_permission = require_permission("review")
require_manage_users_permission = require_permission("manage_users")


def log_operation(
    db: Session,
    user: User,
    action: str,
    target_type: str = None,
    target_id: str = None,
    details: dict = None,
    ip_address: str = None
):
    """记录操作日志"""
    from .models import OperationLog
    log = OperationLog(
        user_id=user.id if user else None,
        action=action,
        target_type=target_type,
        target_id=target_id,
        details=details,
        ip_address=ip_address
    )
    db.add(log)
    db.commit()
