#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
API自动化测试
运行: python -m pytest tests/test_api.py -v
或者: python tests/test_api.py
"""

import sys
from pathlib import Path

# 添加项目根目录到路径
sys.path.insert(0, str(Path(__file__).parent.parent))
sys.path.insert(0, str(Path(__file__).parent.parent / "src"))

import os
os.environ["DB_TYPE"] = "sqlite"  # 测试使用SQLite

from fastapi.testclient import TestClient
from server import app

client = TestClient(app)

# 存储测试中获取的token
test_token = None
test_user_id = None


class TestAuth:
    """认证相关测试"""
    
    def test_1_health_check(self):
        """测试健康检查接口"""
        response = client.get("/health")
        assert response.status_code == 200
        data = response.json()
        assert data["status"] == "healthy"
        print("✅ 健康检查通过")
    
    def test_2_login_with_wrong_password(self):
        """测试错误密码登录"""
        response = client.post("/api/auth/login", json={
            "username": "root",
            "password": "wrong_password"
        })
        assert response.status_code == 401
        print("✅ 错误密码正确拒绝")
    
    def test_3_login_success(self):
        """测试正确登录"""
        global test_token
        response = client.post("/api/auth/login", json={
            "username": "root",
            "password": "root123"
        })
        assert response.status_code == 200
        data = response.json()
        assert data["success"] == True
        assert "access_token" in data
        test_token = data["access_token"]
        print(f"✅ 登录成功，获取token")
    
    def test_4_get_me(self):
        """测试获取当前用户信息"""
        headers = {"Authorization": f"Bearer {test_token}"}
        response = client.get("/api/auth/me", headers=headers)
        assert response.status_code == 200
        data = response.json()
        assert data["username"] == "root"
        assert data["role"] == "root"
        print(f"✅ 获取用户信息成功: {data['name']}")


class TestAdmin:
    """管理功能测试"""
    
    def test_list_users(self):
        """测试获取用户列表"""
        headers = {"Authorization": f"Bearer {test_token}"}
        response = client.get("/api/admin/users", headers=headers)
        assert response.status_code == 200
        data = response.json()
        assert data["success"] == True
        assert "users" in data
        print(f"✅ 获取用户列表成功，共 {len(data['users'])} 个用户")
    
    def test_create_user(self):
        """测试创建用户"""
        global test_user_id
        headers = {"Authorization": f"Bearer {test_token}"}
        response = client.post("/api/admin/users", headers=headers, json={
            "username": "test_teacher",
            "password": "test123456",
            "name": "测试教师",
            "role": "teacher",
            "email": "test@example.com"
        })
        assert response.status_code == 200
        data = response.json()
        assert data["username"] == "test_teacher"
        test_user_id = data["id"]
        print(f"✅ 创建用户成功: {data['name']} (ID: {test_user_id})")
    
    def test_get_statistics(self):
        """测试获取统计信息"""
        headers = {"Authorization": f"Bearer {test_token}"}
        response = client.get("/api/admin/statistics", headers=headers)
        assert response.status_code == 200
        data = response.json()
        assert "total_subjects" in data
        assert "total_entities" in data
        print(f"✅ 获取统计成功: {data['total_subjects']} 个学科, {data['total_entities']} 个实体")
    
    def test_assign_subject(self):
        """测试分配学科"""
        if not test_user_id:
            print("⚠️ 跳过：没有测试用户ID")
            return
        
        headers = {"Authorization": f"Bearer {test_token}"}
        response = client.post("/api/admin/assign", headers=headers, json={
            "user_id": test_user_id,
            "subject_id": "高中数学"
        })
        assert response.status_code == 200
        print(f"✅ 学科分配成功")
    
    def test_delete_user(self):
        """测试删除用户"""
        if not test_user_id:
            print("⚠️ 跳过：没有测试用户ID")
            return
        
        headers = {"Authorization": f"Bearer {test_token}"}
        response = client.delete(f"/api/admin/users/{test_user_id}", headers=headers)
        assert response.status_code == 200
        print(f"✅ 删除用户成功")


class TestReview:
    """审核功能测试"""
    
    def test_get_subjects(self):
        """测试获取学科列表"""
        headers = {"Authorization": f"Bearer {test_token}"}
        response = client.get("/api/review/subjects", headers=headers)
        assert response.status_code == 200
        data = response.json()
        assert data["success"] == True
        assert "subjects" in data
        print(f"✅ 获取学科列表成功，共 {len(data['subjects'])} 个学科")
        return data["subjects"]
    
    def test_get_entities(self):
        """测试获取实体列表"""
        headers = {"Authorization": f"Bearer {test_token}"}
        # 先获取学科列表
        subjects = self.test_get_subjects()
        if not subjects:
            print("⚠️ 没有可用学科")
            return
        
        subject_id = subjects[0]["subject_id"]
        response = client.get(f"/api/review/entities/{subject_id}?page_size=10", headers=headers)
        assert response.status_code == 200
        data = response.json()
        assert data["success"] == True
        print(f"✅ 获取 {subject_id} 实体成功，共 {data['total']} 个")
    
    def test_get_progress(self):
        """测试获取审核进度"""
        headers = {"Authorization": f"Bearer {test_token}"}
        response = client.get("/api/review/subjects", headers=headers)
        subjects = response.json().get("subjects", [])
        
        if not subjects:
            print("⚠️ 没有可用学科")
            return
        
        subject_id = subjects[0]["subject_id"]
        response = client.get(f"/api/review/progress/{subject_id}", headers=headers)
        assert response.status_code == 200
        data = response.json()
        assert "total_entities" in data
        print(f"✅ 获取 {subject_id} 进度成功: {data['progress_percent']}%")


class TestStaticFiles:
    """静态文件测试"""
    
    def test_index_page(self):
        """测试首页"""
        response = client.get("/")
        assert response.status_code == 200
        print("✅ 首页访问成功")
    
    def test_login_page(self):
        """测试登录页"""
        response = client.get("/static/app/login.html")
        assert response.status_code == 200
        print("✅ 登录页访问成功")
    
    def test_css_file(self):
        """测试CSS文件"""
        response = client.get("/static/css/app.css")
        assert response.status_code == 200
        print("✅ CSS文件访问成功")
    
    def test_js_file(self):
        """测试JS文件"""
        response = client.get("/static/js/api.js")
        assert response.status_code == 200
        print("✅ JS文件访问成功")


def run_all_tests():
    """运行所有测试"""
    print("\n" + "="*60)
    print("知识图谱数据审校系统 - API测试")
    print("="*60 + "\n")
    
    test_classes = [
        ("认证测试", TestAuth()),
        ("管理功能测试", TestAdmin()),
        ("审核功能测试", TestReview()),
        ("静态文件测试", TestStaticFiles()),
    ]
    
    total_tests = 0
    passed_tests = 0
    failed_tests = []
    
    for name, test_instance in test_classes:
        print(f"\n--- {name} ---")
        
        # 获取所有test_开头的方法
        test_methods = [m for m in dir(test_instance) if m.startswith("test_")]
        
        for method_name in test_methods:
            total_tests += 1
            try:
                method = getattr(test_instance, method_name)
                method()
                passed_tests += 1
            except AssertionError as e:
                failed_tests.append((name, method_name, str(e)))
                print(f"❌ {method_name}: {e}")
                import traceback
                traceback.print_exc()
            except Exception as e:
                failed_tests.append((name, method_name, str(e)))
                print(f"❌ {method_name}: {e}")
                import traceback
                traceback.print_exc()
    
    print("\n" + "="*60)
    print(f"测试完成: {passed_tests}/{total_tests} 通过")
    
    if failed_tests:
        print(f"\n失败的测试 ({len(failed_tests)}):")
        for name, method, error in failed_tests:
            print(f"  - {name}.{method}: {error}")
    
    print("="*60 + "\n")
    
    return len(failed_tests) == 0


if __name__ == "__main__":
    success = run_all_tests()
    sys.exit(0 if success else 1)
