#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
测试数据生成器
用于生成测试用户、审核记录等数据

警告: 此脚本仅用于开发和测试环境，生产环境禁止运行！
"""

import sys
from pathlib import Path

# 添加项目根目录到路径
sys.path.insert(0, str(Path(__file__).parent.parent))
sys.path.insert(0, str(Path(__file__).parent.parent / "src"))

import os

# ========== 生产环境保护 ==========
def check_production_safety():
    """检查是否在生产环境运行"""
    is_production = os.getenv("PRODUCTION", "").lower() in ("true", "1", "yes")
    db_type = os.getenv("DB_TYPE", "sqlite")
    
    if is_production:
        print("="*60)
        print("❌ 错误: 检测到生产环境标志 (PRODUCTION=true)")
        print("   此脚本仅用于开发和测试环境，禁止在生产环境运行！")
        print("="*60)
        sys.exit(1)
    
    if db_type == "mysql":
        print("="*60)
        print("⚠️  警告: 检测到 MySQL 数据库配置")
        print("   如果这是生产数据库，请立即停止！")
        print("="*60)
        confirm = input("确认这不是生产数据库，继续执行? (输入 'I UNDERSTAND' 确认): ")
        if confirm != "I UNDERSTAND":
            print("❌ 已取消操作")
            sys.exit(1)
    
    return True

# 在导入其他模块前进行安全检查
check_production_safety()

os.environ["DB_TYPE"] = "sqlite"

from api.database import SessionLocal, init_db
from api.models import User, UserSubject, ReviewRecord, ReviewStatus, UserRole
from api.deps import get_password_hash


def create_test_users():
    """创建测试用户"""
    db = SessionLocal()
    
    users_data = [
        {
            "username": "root",
            "password": "root123",
            "name": "系统管理员",
            "role": UserRole.root,
            "email": "root@test.com"
        },
        {
            "username": "admin1",
            "password": "admin123",
            "name": "管理员张三",
            "role": UserRole.admin,
            "email": "admin1@test.com"
        },
        {
            "username": "teacher1",
            "password": "teacher123",
            "name": "数学老师李四",
            "role": UserRole.teacher,
            "email": "teacher1@test.com"
        },
        {
            "username": "teacher2",
            "password": "teacher123",
            "name": "物理老师王五",
            "role": UserRole.teacher,
            "email": "teacher2@test.com"
        },
        {
            "username": "teacher3",
            "password": "teacher123",
            "name": "化学老师赵六",
            "role": UserRole.teacher,
            "email": "teacher3@test.com"
        },
    ]
    
    created_usernames = []
    
    try:
        for user_data in users_data:
            # 检查用户是否已存在
            existing = db.query(User).filter(User.username == user_data["username"]).first()
            if existing:
                print(f"用户 {user_data['username']} 已存在，跳过")
                created_usernames.append(user_data["username"])
                continue
            
            user = User(
                username=user_data["username"],
                password_hash=get_password_hash(user_data["password"]),
                name=user_data["name"],
                role=user_data["role"],
                email=user_data["email"],
                is_active=True,
                must_change_password=False
            )
            db.add(user)
            print(f"✅ 创建用户: {user_data['name']} ({user_data['username']}) - {user_data['role'].value}")
            created_usernames.append(user_data["username"])
        
        db.commit()
        return created_usernames
    
    except Exception as e:
        db.rollback()
        print(f"❌ 创建用户失败: {e}")
        return []
    finally:
        db.close()


def assign_subjects_to_users(usernames):
    """为测试用户分配学科"""
    db = SessionLocal()
    
    # 学科分配方案
    assignments = {
        "teacher1": ["高中数学"],
        "teacher2": ["高中物理", "义教物理"],
        "teacher3": ["高中化学"],
    }
    
    try:
        for username in usernames:
            if username not in assignments:
                continue
            
            # 重新查询用户
            user = db.query(User).filter(User.username == username).first()
            if not user:
                continue
            
            for subject_id in assignments[username]:
                # 检查是否已分配
                existing = db.query(UserSubject).filter(
                    UserSubject.user_id == user.id,
                    UserSubject.subject_id == subject_id
                ).first()
                
                if existing:
                    print(f"  {user.name} 已分配 {subject_id}，跳过")
                    continue
                
                assignment = UserSubject(
                    user_id=user.id,
                    subject_id=subject_id
                )
                db.add(assignment)
                print(f"✅ 分配学科: {user.name} -> {subject_id}")
        
        db.commit()
    
    except Exception as e:
        db.rollback()
        print(f"❌ 分配学科失败: {e}")
    finally:
        db.close()


def create_sample_reviews():
    """创建示例审核记录"""
    db = SessionLocal()
    
    # 获取一个教师用户
    teacher = db.query(User).filter(User.role == UserRole.teacher).first()
    if not teacher:
        print("⚠️ 没有教师用户，跳过创建审核记录")
        db.close()
        return
    
    # 示例审核数据
    reviews_data = [
        {
            "subject_id": "高中数学",
            "target_type": "entity",
            "target_id": "Chapter_1",
            "target_title": "集合与常用逻辑用语",
            "entity_type": "Chapter",
            "status": ReviewStatus.approved,
            "comment": "章节标题和内容正确"
        },
        {
            "subject_id": "高中数学",
            "target_type": "entity",
            "target_id": "Section_1_1",
            "target_title": "集合的概念",
            "entity_type": "Section",
            "status": ReviewStatus.approved,
            "comment": "定义准确"
        },
        {
            "subject_id": "高中数学",
            "target_type": "entity",
            "target_id": "Knowledge_001",
            "target_title": "集合的含义",
            "entity_type": "Knowledge",
            "status": ReviewStatus.needs_fix,
            "comment": "描述需要更详细，建议补充实例"
        },
        {
            "subject_id": "高中数学",
            "target_type": "relation",
            "target_id": "Chapter_1|Section_1_1|contains",
            "target_title": "集合与常用逻辑用语 -> 集合的概念",
            "status": ReviewStatus.approved,
            "comment": "关系正确"
        },
    ]
    
    try:
        for review_data in reviews_data:
            # 检查是否已存在
            existing = db.query(ReviewRecord).filter(
                ReviewRecord.subject_id == review_data["subject_id"],
                ReviewRecord.target_id == review_data["target_id"]
            ).first()
            
            if existing:
                print(f"  审核记录 {review_data['target_id']} 已存在，跳过")
                continue
            
            review = ReviewRecord(
                subject_id=review_data["subject_id"],
                target_type=review_data["target_type"],
                target_id=review_data["target_id"],
                target_title=review_data["target_title"],
                entity_type=review_data.get("entity_type"),
                status=review_data["status"],
                reviewer_id=teacher.id,
                comment=review_data["comment"]
            )
            db.add(review)
            status_text = "✅ 通过" if review_data["status"] == ReviewStatus.approved else "⚠️ 需修改"
            print(f"{status_text} 创建审核: {review_data['target_title']}")
        
        db.commit()
    
    except Exception as e:
        db.rollback()
        print(f"❌ 创建审核记录失败: {e}")
    finally:
        db.close()


def show_test_accounts():
    """显示测试账号信息"""
    print("\n" + "="*60)
    print("测试账号列表")
    print("="*60)
    print(f"{'用户名':<15} {'密码':<15} {'角色':<10} {'姓名'}")
    print("-"*60)
    print(f"{'root':<15} {'root123':<15} {'root':<10} 系统管理员")
    print(f"{'admin1':<15} {'admin123':<15} {'admin':<10} 管理员张三")
    print(f"{'teacher1':<15} {'teacher123':<15} {'teacher':<10} 数学老师李四")
    print(f"{'teacher2':<15} {'teacher123':<15} {'teacher':<10} 物理老师王五")
    print(f"{'teacher3':<15} {'teacher123':<15} {'teacher':<10} 化学老师赵六")
    print("="*60 + "\n")


def init_test_data():
    """初始化所有测试数据"""
    print("\n" + "="*60)
    print("初始化测试数据")
    print("="*60 + "\n")
    
    # 初始化数据库
    print("--- 初始化数据库 ---")
    init_db()
    print("✅ 数据库初始化完成\n")
    
    # 创建测试用户
    print("--- 创建测试用户 ---")
    usernames = create_test_users()
    print()
    
    # 分配学科
    if usernames:
        print("--- 分配学科 ---")
        assign_subjects_to_users(usernames)
        print()
    
    # 创建审核记录
    print("--- 创建示例审核记录 ---")
    create_sample_reviews()
    
    # 显示账号信息
    show_test_accounts()


def reset_test_data():
    """重置测试数据（危险操作）"""
    db_path = Path(__file__).parent.parent / "data" / "review.db"
    
    if db_path.exists():
        confirm = input(f"确定要删除测试数据库 {db_path}? (yes/no): ")
        if confirm.lower() == "yes":
            db_path.unlink()
            print("✅ 数据库已删除")
            init_test_data()
        else:
            print("❌ 取消操作")
    else:
        print("数据库不存在，将创建新数据库")
        init_test_data()


if __name__ == "__main__":
    import argparse
    
    parser = argparse.ArgumentParser(description="测试数据管理")
    parser.add_argument("--reset", action="store_true", help="重置测试数据")
    parser.add_argument("--show", action="store_true", help="显示测试账号")
    
    args = parser.parse_args()
    
    if args.reset:
        reset_test_data()
    elif args.show:
        show_test_accounts()
    else:
        init_test_data()
