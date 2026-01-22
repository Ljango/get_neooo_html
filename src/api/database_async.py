# -*- coding: utf-8 -*-
"""
异步数据库连接配置 - 提升并发性能
"""

import os
from pathlib import Path
from sqlalchemy.ext.asyncio import create_async_engine, AsyncSession, async_sessionmaker
from sqlalchemy.ext.declarative import declarative_base
from dotenv import load_dotenv

load_dotenv()

# 数据库类型
DB_TYPE = os.getenv("DB_TYPE", "sqlite")

if DB_TYPE == "mysql":
    # MySQL异步配置
    MYSQL_HOST = os.getenv("MYSQL_HOST", "localhost")
    MYSQL_PORT = os.getenv("MYSQL_PORT", "3306")
    MYSQL_USER = os.getenv("MYSQL_USER", "root")
    MYSQL_PASSWORD = os.getenv("MYSQL_PASSWORD", "")
    MYSQL_DATABASE = os.getenv("MYSQL_DATABASE", "knowledge_graph")
    
    DATABASE_URL = f"mysql+aiomysql://{MYSQL_USER}:{MYSQL_PASSWORD}@{MYSQL_HOST}:{MYSQL_PORT}/{MYSQL_DATABASE}?charset=utf8mb4"
    
    engine = create_async_engine(
        DATABASE_URL,
        pool_size=20,          # 连接池大小
        max_overflow=40,       # 最大溢出连接
        pool_pre_ping=True,
        pool_recycle=3600,
        echo=False
    )
else:
    # SQLite异步配置
    DB_PATH = Path(__file__).parent.parent.parent / "data" / "review.db"
    DB_PATH.parent.mkdir(parents=True, exist_ok=True)
    
    DATABASE_URL = f"sqlite+aiosqlite:///{DB_PATH}"
    
    engine = create_async_engine(
        DATABASE_URL,
        connect_args={"check_same_thread": False},
        pool_size=10,
        max_overflow=20,
        echo=False
    )
    print(f"使用异步SQLite数据库: {DB_PATH}")

AsyncSessionLocal = async_sessionmaker(
    engine,
    class_=AsyncSession,
    expire_on_commit=False
)

Base = declarative_base()


async def get_async_db():
    """获取异步数据库会话"""
    async with AsyncSessionLocal() as session:
        try:
            yield session
        finally:
            await session.close()


async def init_async_db():
    """初始化异步数据库表"""
    async with engine.begin() as conn:
        await conn.run_sync(Base.metadata.create_all)
