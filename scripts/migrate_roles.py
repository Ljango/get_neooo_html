#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
数据库迁移脚本：将 role 字段迁移到 roles（多角色支持）

使用方法：
    python scripts/migrate_roles.py

说明：
    1. 备份现有数据库
    2. 添加 roles 列（JSON类型）
    3. 将现有 role 数据迁移到 roles 列
    4. 删除旧的 role 列（可选）
"""

import os
import sys
import json
import shutil
from datetime import datetime
from pathlib import Path

# 添加项目根目录到路径
project_root = Path(__file__).parent.parent
sys.path.insert(0, str(project_root))
sys.path.insert(0, str(project_root / "src"))

from config import PROJECT_ROOT

# 数据库路径
DB_PATH = PROJECT_ROOT / "data" / "review.db"
BACKUP_DIR = PROJECT_ROOT / "archive" / "db_backups"


def backup_database():
    """备份数据库"""
    BACKUP_DIR.mkdir(parents=True, exist_ok=True)
    timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
    backup_path = BACKUP_DIR / f"review_db_before_roles_migration_{timestamp}.db"
    
    if DB_PATH.exists():
        shutil.copy2(DB_PATH, backup_path)
        print(f"✅ 数据库已备份到: {backup_path}")
        return backup_path
    else:
        print(f"⚠️  数据库不存在: {DB_PATH}")
        return None


def migrate_roles():
    """执行角色迁移"""
    import sqlite3
    
    if not DB_PATH.exists():
        print(f"❌ 数据库不存在: {DB_PATH}")
        return False
    
    conn = sqlite3.connect(str(DB_PATH))
    cursor = conn.cursor()
    
    try:
        # 检查当前表结构
        cursor.execute("PRAGMA table_info(users)")
        columns = {row[1]: row[2] for row in cursor.fetchall()}
        
        print(f"当前 users 表列: {list(columns.keys())}")
        
        has_role = 'role' in columns
        has_roles = 'roles' in columns
        
        if has_roles:
            print("✅ roles 列已存在，检查是否需要迁移数据...")
            
            # 检查是否有空的 roles
            cursor.execute("SELECT COUNT(*) FROM users WHERE roles IS NULL OR roles = ''")
            null_count = cursor.fetchone()[0]
            
            if null_count > 0 and has_role:
                print(f"📦 发现 {null_count} 个用户需要从 role 迁移到 roles")
                
                # 获取需要迁移的用户
                cursor.execute("SELECT id, username, role FROM users WHERE roles IS NULL OR roles = ''")
                users_to_migrate = cursor.fetchall()
                
                for user_id, username, role in users_to_migrate:
                    if role:
                        roles_json = json.dumps([role])
                    else:
                        roles_json = json.dumps(["teacher"])
                    
                    cursor.execute(
                        "UPDATE users SET roles = ? WHERE id = ?",
                        (roles_json, user_id)
                    )
                    print(f"  ✓ 迁移用户 {username}: {role} -> {roles_json}")
                
                conn.commit()
                print(f"✅ 成功迁移 {len(users_to_migrate)} 个用户")
            else:
                print("✅ 所有用户的 roles 已有值，无需迁移")
            
            return True
        
        # 需要添加 roles 列
        print("📦 添加 roles 列...")
        cursor.execute("ALTER TABLE users ADD COLUMN roles TEXT")
        
        # 迁移现有数据
        if has_role:
            print("📦 迁移 role 数据到 roles...")
            cursor.execute("SELECT id, username, role FROM users")
            users = cursor.fetchall()
            
            for user_id, username, role in users:
                if role:
                    roles_json = json.dumps([role])
                else:
                    roles_json = json.dumps(["teacher"])
                
                cursor.execute(
                    "UPDATE users SET roles = ? WHERE id = ?",
                    (roles_json, user_id)
                )
                print(f"  ✓ 迁移用户 {username}: {role} -> {roles_json}")
            
            conn.commit()
            print(f"✅ 成功迁移 {len(users)} 个用户")
        else:
            # 设置默认值
            cursor.execute(
                "UPDATE users SET roles = ? WHERE roles IS NULL",
                (json.dumps(["teacher"]),)
            )
            conn.commit()
            print("✅ 已设置默认 roles 值")
        
        return True
        
    except Exception as e:
        print(f"❌ 迁移失败: {e}")
        conn.rollback()
        return False
    finally:
        conn.close()


def verify_migration():
    """验证迁移结果"""
    import sqlite3
    
    conn = sqlite3.connect(str(DB_PATH))
    cursor = conn.cursor()
    
    try:
        cursor.execute("SELECT id, username, roles FROM users")
        users = cursor.fetchall()
        
        print("\n📋 迁移验证：")
        print("-" * 50)
        
        all_valid = True
        for user_id, username, roles_str in users:
            try:
                roles = json.loads(roles_str) if roles_str else []
                status = "✅" if roles else "⚠️"
                print(f"{status} 用户 {username} (ID:{user_id}): {roles}")
                if not roles:
                    all_valid = False
            except json.JSONDecodeError:
                print(f"❌ 用户 {username}: roles 格式错误: {roles_str}")
                all_valid = False
        
        print("-" * 50)
        if all_valid:
            print("✅ 所有用户迁移验证通过")
        else:
            print("⚠️  部分用户数据异常，请检查")
        
        return all_valid
        
    finally:
        conn.close()


def main():
    print("=" * 60)
    print("  角色字段迁移: role -> roles (多角色支持)")
    print("=" * 60)
    print()
    
    # 1. 备份数据库
    print("【步骤1】备份数据库...")
    backup_path = backup_database()
    print()
    
    # 2. 执行迁移
    print("【步骤2】执行迁移...")
    if not migrate_roles():
        print("\n❌ 迁移失败，请检查错误信息")
        if backup_path:
            print(f"💡 可以使用备份恢复: {backup_path}")
        return 1
    print()
    
    # 3. 验证结果
    print("【步骤3】验证迁移结果...")
    verify_migration()
    print()
    
    print("=" * 60)
    print("  迁移完成！")
    print("=" * 60)
    
    return 0


if __name__ == "__main__":
    sys.exit(main())
