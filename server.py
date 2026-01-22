#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
知识图谱数据审校系统 - FastAPI服务入口
"""

import os
import sys
from pathlib import Path
from datetime import datetime

# 添加src目录到路径
sys.path.insert(0, str(Path(__file__).parent / "src"))

import uvicorn
from fastapi import FastAPI, Request
from fastapi.staticfiles import StaticFiles
from fastapi.responses import FileResponse, JSONResponse, RedirectResponse
from fastapi.middleware.cors import CORSMiddleware
from contextlib import asynccontextmanager

from api.database import init_db, engine, Base
from api.models import User, UserRole
from api.deps import get_password_hash
from sqlalchemy.orm import Session

# 全局配置
INIT_DB_FLAG = False  # 是否初始化数据库（通过命令行参数设置）
PRODUCTION_MODE = os.getenv("PRODUCTION", "").lower() in ("true", "1", "yes")


def get_db_path():
    """获取数据库文件路径"""
    db_type = os.getenv("DB_TYPE", "sqlite")
    if db_type == "sqlite":
        return Path(__file__).parent / "data" / "review.db"
    return None


def check_database_exists():
    """检查数据库是否存在"""
    db_path = get_db_path()
    if db_path and db_path.exists():
        return True
    return False


def backup_database():
    """备份现有数据库"""
    db_path = get_db_path()
    if db_path and db_path.exists():
        backup_dir = db_path.parent / "backups"
        backup_dir.mkdir(parents=True, exist_ok=True)
        
        timestamp = datetime.now().strftime('%Y%m%d_%H%M%S')
        backup_path = backup_dir / f"review_{timestamp}.db.bak"
        
        import shutil
        shutil.copy2(db_path, backup_path)
        print(f"数据库已备份到: {backup_path}")
        
        # 只保留最近10个备份
        backups = sorted(backup_dir.glob("review_*.db.bak"))
        for old_backup in backups[:-10]:
            old_backup.unlink()
        
        return backup_path
    return None


@asynccontextmanager
async def lifespan(app: FastAPI):
    """应用生命周期管理"""
    global INIT_DB_FLAG
    
    db_exists = check_database_exists()
    
    if db_exists:
        print(f"检测到现有数据库")
        if INIT_DB_FLAG:
            print("警告: --init-db 参数已设置，将重新初始化数据库")
            backup_database()
        else:
            print("数据库保护模式: 使用现有数据库，不会重新初始化")
    
    print("正在初始化数据库...")
    try:
        init_db()
        # 创建默认root用户（如果不存在）
        create_default_root_user()
        print("数据库初始化完成")
    except Exception as e:
        print(f"数据库初始化警告: {e}")
    
    yield
    
    # 关闭时清理
    print("服务关闭")


def create_default_root_user():
    """创建默认root用户"""
    from api.database import SessionLocal
    db = SessionLocal()
    try:
        # 检查是否已存在root用户
        root_user = db.query(User).filter(User.username == "root").first()
        if not root_user:
            root_user = User(
                username="root",
                password_hash=get_password_hash("root123"),
                name="系统管理员",
                role=UserRole.root,
                is_active=True,
                must_change_password=True
            )
            db.add(root_user)
            db.commit()
            print("已创建默认root用户 (用户名: root, 密码: root123)")
    except Exception as e:
        print(f"创建root用户失败: {e}")
    finally:
        db.close()


# 创建FastAPI应用
app = FastAPI(
    title="知识图谱数据审校系统",
    description="支持多学科知识图谱数据的审核、管理和版本控制",
    version="1.0.0",
    lifespan=lifespan
)

# CORS配置
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

# 导入并注册路由
from api.auth import router as auth_router
from api.review import router as review_router
from api.admin import router as admin_router
from api.data import router as data_router
from api.edit import router as edit_router

app.include_router(auth_router, prefix="/api/auth", tags=["认证"])
app.include_router(review_router, prefix="/api/review", tags=["审核"])
app.include_router(admin_router, prefix="/api/admin", tags=["管理"])
app.include_router(data_router, prefix="/api/data", tags=["数据操作"])
app.include_router(edit_router, prefix="/api/edit", tags=["数据编辑"])

# 静态文件服务
app.mount("/static", StaticFiles(directory="static"), name="static")


@app.get("/")
async def root():
    """根路径 - 重定向到审校系统登录页"""
    return RedirectResponse(url="/static/app/login.html")


@app.get("/app/{page}")
async def serve_app_page(page: str):
    """审校系统页面"""
    page_path = Path(f"static/app/{page}")
    if page_path.exists():
        return FileResponse(page_path)
    return FileResponse("static/app/login.html")


@app.get("/{filename:path}.html")
async def serve_html_file(filename: str):
    """提供根目录下的HTML图谱文件（兼容原有URL）"""
    # 尝试在static目录查找
    static_path = Path(f"static/{filename}.html")
    if static_path.exists():
        return FileResponse(static_path)
    
    # 尝试在根目录查找（原有图谱HTML文件）
    root_path = Path(f"{filename}.html")
    if root_path.exists():
        return FileResponse(root_path)
    
    return JSONResponse(
        status_code=404,
        content={"message": f"页面 {filename}.html 不存在"}
    )


@app.get("/health")
async def health_check():
    """健康检查"""
    return {"status": "healthy", "service": "knowledge-graph-review"}


@app.exception_handler(Exception)
async def global_exception_handler(request: Request, exc: Exception):
    """全局异常处理"""
    return JSONResponse(
        status_code=500,
        content={
            "success": False,
            "message": "服务器内部错误",
            "detail": str(exc)
        }
    )


if __name__ == "__main__":
    import argparse
    
    parser = argparse.ArgumentParser(description="知识图谱审校系统服务器")
    parser.add_argument("-p", "--port", type=int, default=8000, help="端口号")
    parser.add_argument("-H", "--host", type=str, default="0.0.0.0", help="监听地址")
    parser.add_argument("--reload", action="store_true", help="开发模式自动重载")
    parser.add_argument("--init-db", action="store_true", 
                       help="强制初始化数据库（会备份现有数据）")
    parser.add_argument("--production", action="store_true",
                       help="生产模式（禁用危险操作）")
    
    args = parser.parse_args()
    
    # 设置全局标志
    INIT_DB_FLAG = args.init_db
    if args.production:
        os.environ["PRODUCTION"] = "true"
        PRODUCTION_MODE = True
    
    mode_text = "生产模式" if PRODUCTION_MODE else "开发模式"
    db_status = "将重新初始化" if args.init_db else "保护现有数据"
    
    print(f"""
{'='*60}
知识图谱数据审校系统
{'='*60}
运行模式: {mode_text}
监听地址: {args.host}:{args.port}
数据库: {db_status}
API文档: http://localhost:{args.port}/docs
健康检查: http://localhost:{args.port}/health
{'='*60}
    """)
    
    uvicorn.run(
        "server:app",
        host=args.host,
        port=args.port,
        reload=args.reload
    )
