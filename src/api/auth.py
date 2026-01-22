# -*- coding: utf-8 -*-
"""
认证API
"""

from datetime import datetime
from fastapi import APIRouter, Depends, HTTPException, status, Request
from sqlalchemy.orm import Session

from .database import get_db
from .models import User
from .schemas import (
    LoginRequest, LoginResponse, ChangePasswordRequest,
    UserInfo, ResponseBase
)
from .deps import (
    verify_password, get_password_hash, create_access_token,
    get_current_user, log_operation
)

router = APIRouter()


@router.post("/login", response_model=LoginResponse)
async def login(
    request: Request,
    login_data: LoginRequest,
    db: Session = Depends(get_db)
):
    """用户登录"""
    # 查找用户
    user = db.query(User).filter(User.username == login_data.username).first()
    
    if not user:
        raise HTTPException(
            status_code=status.HTTP_401_UNAUTHORIZED,
            detail="用户名或密码错误"
        )
    
    # 验证密码
    if not verify_password(login_data.password, user.password_hash):
        raise HTTPException(
            status_code=status.HTTP_401_UNAUTHORIZED,
            detail="用户名或密码错误"
        )
    
    # 检查用户状态
    if not user.is_active:
        raise HTTPException(
            status_code=status.HTTP_403_FORBIDDEN,
            detail="用户已被禁用"
        )
    
    # 更新最后登录时间
    user.last_login = datetime.utcnow()
    db.commit()
    
    # 生成token
    access_token = create_access_token(data={"sub": user.username})
    
    # 记录登录日志
    client_ip = request.client.host if request.client else None
    log_operation(db, user, "login", "user", str(user.id), ip_address=client_ip)
    
    return LoginResponse(
        access_token=access_token,
        user=UserInfo.model_validate(user)
    )


@router.post("/logout", response_model=ResponseBase)
async def logout(
    request: Request,
    current_user: User = Depends(get_current_user),
    db: Session = Depends(get_db)
):
    """退出登录"""
    client_ip = request.client.host if request.client else None
    log_operation(db, current_user, "logout", "user", str(current_user.id), ip_address=client_ip)
    
    return ResponseBase(message="已退出登录")


@router.get("/me", response_model=UserInfo)
async def get_me(current_user: User = Depends(get_current_user)):
    """获取当前用户信息"""
    return UserInfo.model_validate(current_user)


@router.put("/password", response_model=ResponseBase)
async def change_password(
    request: Request,
    password_data: ChangePasswordRequest,
    current_user: User = Depends(get_current_user),
    db: Session = Depends(get_db)
):
    """修改密码"""
    # 验证旧密码
    if not verify_password(password_data.old_password, current_user.password_hash):
        raise HTTPException(
            status_code=status.HTTP_400_BAD_REQUEST,
            detail="旧密码错误"
        )
    
    # 检查新密码长度
    if len(password_data.new_password) < 6:
        raise HTTPException(
            status_code=status.HTTP_400_BAD_REQUEST,
            detail="新密码长度至少6位"
        )
    
    # 更新密码
    current_user.password_hash = get_password_hash(password_data.new_password)
    current_user.must_change_password = False
    db.commit()
    
    # 记录日志
    client_ip = request.client.host if request.client else None
    log_operation(
        db, current_user, "change_password", "user", str(current_user.id),
        ip_address=client_ip
    )
    
    return ResponseBase(message="密码修改成功")
