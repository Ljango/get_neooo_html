#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
多用户并发测试脚本
用于验证系统在多用户同时操作时的数据一致性和锁机制

使用方法:
    python tests/test_concurrent.py --url http://localhost:8000 --users 5
"""

import sys
import os
import argparse
import asyncio
import aiohttp
import json
import time
from pathlib import Path
from datetime import datetime
from typing import List, Dict, Any
import random
import string

# 添加项目路径
sys.path.insert(0, str(Path(__file__).parent.parent))
sys.path.insert(0, str(Path(__file__).parent.parent / "src"))


class ConcurrentTester:
    """并发测试器"""
    
    def __init__(self, base_url: str, num_users: int = 5):
        self.base_url = base_url.rstrip('/')
        self.num_users = num_users
        self.results: List[Dict[str, Any]] = []
        self.tokens: Dict[str, str] = {}  # username -> token
        
    async def login(self, session: aiohttp.ClientSession, username: str, password: str) -> str:
        """登录获取token"""
        url = f"{self.base_url}/api/auth/login"
        async with session.post(url, json={"username": username, "password": password}) as resp:
            if resp.status == 200:
                data = await resp.json()
                return data.get("access_token", "")
            else:
                text = await resp.text()
                raise Exception(f"登录失败: {resp.status} - {text}")
    
    async def create_test_users(self, session: aiohttp.ClientSession, root_token: str) -> List[Dict]:
        """创建测试用户"""
        users = []
        for i in range(self.num_users):
            username = f"test_concurrent_{i}_{random.randint(1000, 9999)}"
            password = "test123456"
            
            url = f"{self.base_url}/api/admin/users"
            headers = {"Authorization": f"Bearer {root_token}"}
            
            user_data = {
                "username": username,
                "password": password,
                "name": f"并发测试用户{i}",
                "role": "teacher",
                "email": f"{username}@test.com"
            }
            
            async with session.post(url, json=user_data, headers=headers) as resp:
                if resp.status == 200:
                    users.append({"username": username, "password": password})
                    print(f"  创建用户: {username}")
                else:
                    text = await resp.text()
                    print(f"  创建用户失败: {username} - {text}")
        
        return users
    
    async def delete_test_users(self, session: aiohttp.ClientSession, root_token: str, users: List[Dict]):
        """删除测试用户"""
        headers = {"Authorization": f"Bearer {root_token}"}
        
        # 获取所有用户
        async with session.get(f"{self.base_url}/api/admin/users", headers=headers) as resp:
            if resp.status == 200:
                data = await resp.json()
                for user in data.get("users", []):
                    if user["username"].startswith("test_concurrent_"):
                        url = f"{self.base_url}/api/admin/users/{user['id']}"
                        async with session.delete(url, headers=headers) as del_resp:
                            if del_resp.status == 200:
                                print(f"  删除用户: {user['username']}")
    
    async def concurrent_review_test(self, users: List[Dict]):
        """并发审核提交测试"""
        print("\n=== 测试1: 并发审核提交 ===")
        
        async def submit_review(session: aiohttp.ClientSession, user: Dict, review_num: int):
            """单个用户提交审核"""
            try:
                # 登录
                token = await self.login(session, user["username"], user["password"])
                headers = {"Authorization": f"Bearer {token}"}
                
                # 提交审核
                review_data = {
                    "subject_id": "高中数学",
                    "target_type": "entity",
                    "target_id": f"Test_Entity_{review_num}",
                    "target_title": f"测试实体{review_num}",
                    "entity_type": "TestEntity",
                    "status": "approved",
                    "comment": f"并发测试审核 - {user['username']} - {datetime.now().isoformat()}"
                }
                
                start_time = time.time()
                async with session.post(
                    f"{self.base_url}/api/review/submit",
                    json=review_data,
                    headers=headers
                ) as resp:
                    elapsed = time.time() - start_time
                    status = resp.status
                    text = await resp.text()
                    
                    return {
                        "user": user["username"],
                        "action": "submit_review",
                        "status": status,
                        "elapsed": elapsed,
                        "success": status == 200,
                        "detail": text[:100]
                    }
            except Exception as e:
                return {
                    "user": user["username"],
                    "action": "submit_review",
                    "status": 0,
                    "elapsed": 0,
                    "success": False,
                    "detail": str(e)
                }
        
        # 并发执行
        async with aiohttp.ClientSession() as session:
            tasks = []
            for i, user in enumerate(users):
                # 每个用户提交多个审核
                for j in range(3):
                    tasks.append(submit_review(session, user, i * 10 + j))
            
            results = await asyncio.gather(*tasks, return_exceptions=True)
            
            success_count = sum(1 for r in results if isinstance(r, dict) and r.get("success"))
            total_count = len(results)
            
            print(f"  提交总数: {total_count}")
            print(f"  成功数量: {success_count}")
            print(f"  成功率: {success_count/total_count*100:.1f}%")
            
            # 显示失败的请求
            failures = [r for r in results if isinstance(r, dict) and not r.get("success")]
            if failures:
                print(f"  失败详情:")
                for f in failures[:5]:
                    print(f"    - {f['user']}: {f['detail']}")
            
            self.results.extend(results)
    
    async def concurrent_edit_test(self, users: List[Dict]):
        """并发编辑测试（测试文件锁）"""
        print("\n=== 测试2: 并发编辑（文件锁测试）===")
        
        async def edit_entity(session: aiohttp.ClientSession, user: Dict, entity_id: str):
            """单个用户编辑实体"""
            try:
                token = await self.login(session, user["username"], user["password"])
                headers = {"Authorization": f"Bearer {token}"}
                
                # 尝试编辑同一个实体
                edit_data = {
                    "identifier": entity_id,
                    "updates": {
                        "description": f"由 {user['username']} 在 {datetime.now().isoformat()} 编辑"
                    }
                }
                
                start_time = time.time()
                async with session.post(
                    f"{self.base_url}/api/edit/entity/update?subject_id=高中数学",
                    json=edit_data,
                    headers=headers
                ) as resp:
                    elapsed = time.time() - start_time
                    status = resp.status
                    text = await resp.text()
                    
                    return {
                        "user": user["username"],
                        "action": "edit_entity",
                        "entity_id": entity_id,
                        "status": status,
                        "elapsed": elapsed,
                        "success": status == 200,
                        "locked": status == 423,  # 423 Locked
                        "detail": text[:100]
                    }
            except Exception as e:
                return {
                    "user": user["username"],
                    "action": "edit_entity",
                    "entity_id": entity_id,
                    "status": 0,
                    "elapsed": 0,
                    "success": False,
                    "locked": False,
                    "detail": str(e)
                }
        
        # 所有用户同时编辑同一个实体
        test_entity_id = "Chapter_1"  # 假设这个实体存在
        
        async with aiohttp.ClientSession() as session:
            tasks = [edit_entity(session, user, test_entity_id) for user in users]
            results = await asyncio.gather(*tasks, return_exceptions=True)
            
            success_count = sum(1 for r in results if isinstance(r, dict) and r.get("success"))
            locked_count = sum(1 for r in results if isinstance(r, dict) and r.get("locked"))
            
            print(f"  并发编辑数: {len(users)}")
            print(f"  成功数量: {success_count}")
            print(f"  被锁阻止: {locked_count}")
            print(f"  其他失败: {len(users) - success_count - locked_count}")
            
            # 文件锁是否生效的判断
            if locked_count > 0 or success_count <= 1:
                print(f"  [PASS] 文件锁机制正常工作")
            else:
                print(f"  [WARN] 可能存在并发问题，多个请求同时成功")
            
            self.results.extend(results)
    
    async def concurrent_login_test(self, users: List[Dict]):
        """并发登录测试"""
        print("\n=== 测试3: 并发登录 ===")
        
        async def test_login(session: aiohttp.ClientSession, user: Dict):
            try:
                start_time = time.time()
                token = await self.login(session, user["username"], user["password"])
                elapsed = time.time() - start_time
                
                return {
                    "user": user["username"],
                    "action": "login",
                    "status": 200,
                    "elapsed": elapsed,
                    "success": bool(token)
                }
            except Exception as e:
                return {
                    "user": user["username"],
                    "action": "login",
                    "status": 0,
                    "elapsed": 0,
                    "success": False,
                    "detail": str(e)
                }
        
        async with aiohttp.ClientSession() as session:
            # 每个用户登录多次
            tasks = []
            for user in users:
                for _ in range(5):
                    tasks.append(test_login(session, user))
            
            results = await asyncio.gather(*tasks, return_exceptions=True)
            
            success_count = sum(1 for r in results if isinstance(r, dict) and r.get("success"))
            total_count = len(results)
            avg_time = sum(r.get("elapsed", 0) for r in results if isinstance(r, dict)) / total_count
            
            print(f"  登录请求数: {total_count}")
            print(f"  成功数量: {success_count}")
            print(f"  成功率: {success_count/total_count*100:.1f}%")
            print(f"  平均耗时: {avg_time*1000:.1f}ms")
            
            self.results.extend(results)
    
    async def run_all_tests(self):
        """运行所有测试"""
        print("="*60)
        print("知识图谱数据审校系统 - 多用户并发测试")
        print("="*60)
        print(f"目标服务器: {self.base_url}")
        print(f"测试用户数: {self.num_users}")
        print(f"开始时间: {datetime.now().isoformat()}")
        
        async with aiohttp.ClientSession() as session:
            # 1. 登录root用户
            print("\n--- 准备测试环境 ---")
            try:
                root_token = await self.login(session, "root", "root123")
                print("  root用户登录成功")
            except Exception as e:
                print(f"  root用户登录失败: {e}")
                print("  请确保服务器正在运行且root用户存在")
                return
            
            # 2. 创建测试用户
            print("\n--- 创建测试用户 ---")
            test_users = await self.create_test_users(session, root_token)
            
            if len(test_users) < self.num_users:
                print(f"  警告: 只创建了 {len(test_users)} 个用户")
            
            if not test_users:
                print("  无法创建测试用户，使用默认用户")
                test_users = [{"username": "root", "password": "root123"}]
        
        # 3. 运行测试
        try:
            await self.concurrent_login_test(test_users)
            await self.concurrent_review_test(test_users)
            await self.concurrent_edit_test(test_users)
        except Exception as e:
            print(f"\n测试执行出错: {e}")
        
        # 4. 清理测试用户
        print("\n--- 清理测试环境 ---")
        async with aiohttp.ClientSession() as session:
            try:
                root_token = await self.login(session, "root", "root123")
                await self.delete_test_users(session, root_token, test_users)
            except Exception as e:
                print(f"  清理失败: {e}")
        
        # 5. 输出总结
        self.print_summary()
    
    def print_summary(self):
        """打印测试总结"""
        print("\n" + "="*60)
        print("测试总结")
        print("="*60)
        
        total = len(self.results)
        success = sum(1 for r in self.results if isinstance(r, dict) and r.get("success"))
        
        print(f"总请求数: {total}")
        print(f"成功数量: {success}")
        print(f"失败数量: {total - success}")
        print(f"成功率: {success/total*100:.1f}%" if total > 0 else "N/A")
        
        # 按操作类型统计
        by_action = {}
        for r in self.results:
            if isinstance(r, dict):
                action = r.get("action", "unknown")
                if action not in by_action:
                    by_action[action] = {"total": 0, "success": 0}
                by_action[action]["total"] += 1
                if r.get("success"):
                    by_action[action]["success"] += 1
        
        print("\n按操作类型:")
        for action, stats in by_action.items():
            rate = stats["success"] / stats["total"] * 100 if stats["total"] > 0 else 0
            print(f"  {action}: {stats['success']}/{stats['total']} ({rate:.1f}%)")
        
        print("="*60)


async def main():
    parser = argparse.ArgumentParser(description="多用户并发测试")
    parser.add_argument("--url", type=str, default="http://localhost:8000",
                       help="服务器URL")
    parser.add_argument("--users", type=int, default=5,
                       help="测试用户数量")
    
    args = parser.parse_args()
    
    tester = ConcurrentTester(args.url, args.users)
    await tester.run_all_tests()


if __name__ == "__main__":
    asyncio.run(main())
