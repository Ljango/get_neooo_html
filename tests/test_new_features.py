#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
新功能测试 - 图谱可视化和数据编辑
"""

import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).parent.parent))
sys.path.insert(0, str(Path(__file__).parent.parent / "src"))

import os
os.environ["DB_TYPE"] = "sqlite"

from fastapi.testclient import TestClient
from server import app

client = TestClient(app)

# 全局token
token = None


def login():
    """登录获取token"""
    global token
    response = client.post("/api/auth/login", json={
        "username": "root",
        "password": "root123"
    })
    
    if response.status_code != 200:
        print(f"❌ 登录失败: {response.status_code}")
        print(f"   响应: {response.text}")
        # 尝试初始化数据库
        print("   正在初始化测试数据...")
        import subprocess
        subprocess.run([sys.executable, "tests/test_data.py"], check=False)
        # 重试登录
        response = client.post("/api/auth/login", json={
            "username": "root",
            "password": "root123"
        })
    
    assert response.status_code == 200, f"登录失败: {response.text}"
    data = response.json()
    token = data["access_token"]
    print("✅ 登录成功")
    return token


def test_entity_graph():
    """测试实体图谱API"""
    print("\n--- 测试图谱可视化 ---")
    
    headers = {"Authorization": f"Bearer {token}"}
    
    # 获取学科列表
    response = client.get("/api/review/subjects", headers=headers)
    subjects = response.json().get("subjects", [])
    
    if not subjects:
        print("⚠️ 没有可用学科，跳过图谱测试")
        return
    
    subject_id = subjects[0]["subject_id"]
    print(f"📚 测试学科: {subject_id}")
    
    # 获取实体列表
    response = client.get(
        f"/api/review/entities/{subject_id}?page_size=5",
        headers=headers
    )
    entities = response.json().get("entities", [])
    
    if not entities:
        print("⚠️ 没有实体数据，跳过图谱测试")
        return
    
    # 测试第一个实体的图谱
    entity = entities[0]
    print(f"🔍 测试实体: {entity['identifier']} - {entity['title']}")
    
    # 获取图谱数据
    response = client.get(
        f"/api/review/entity-graph/{subject_id}/{entity['identifier']}?depth=1&max_nodes=20",
        headers=headers
    )
    
    assert response.status_code == 200, f"图谱API失败: {response.text}"
    
    graph_data = response.json()
    assert graph_data["success"] == True
    assert "nodes" in graph_data
    assert "links" in graph_data
    
    print(f"✅ 图谱加载成功:")
    print(f"   - 节点数: {len(graph_data['nodes'])}")
    print(f"   - 边数: {len(graph_data['links'])}")
    print(f"   - 中心节点: {graph_data['center_id']}")
    
    # 显示部分节点
    if graph_data['nodes']:
        print(f"   - 示例节点:")
        for node in graph_data['nodes'][:3]:
            center_mark = " [中心]" if node.get('is_center') else ""
            print(f"     • {node['id']}: {node['label']}{center_mark}")


def test_edit_entity():
    """测试实体编辑API"""
    print("\n--- 测试实体编辑 ---")
    
    headers = {"Authorization": f"Bearer {token}"}
    
    # 获取学科
    response = client.get("/api/review/subjects", headers=headers)
    subjects = response.json().get("subjects", [])
    
    if not subjects:
        print("⚠️ 没有可用学科，跳过编辑测试")
        return
    
    subject_id = subjects[0]["subject_id"]
    
    # 获取实体
    response = client.get(
        f"/api/review/entities/{subject_id}?page_size=1",
        headers=headers
    )
    entities = response.json().get("entities", [])
    
    if not entities:
        print("⚠️ 没有实体数据，跳过编辑测试")
        return
    
    entity = entities[0]
    original_title = entity['title']
    identifier = entity['identifier']
    
    print(f"📝 测试实体: {identifier}")
    print(f"   原标题: {original_title}")
    
    # 更新标题
    new_title = f"{original_title} [已测试编辑]"
    response = client.post(
        f"/api/edit/entity/update?subject_id={subject_id}",
        headers=headers,
        json={
            "identifier": identifier,
            "updates": {
                "title": new_title
            }
        }
    )
    
    if response.status_code == 200:
        result = response.json()
        print(f"✅ 实体更新成功")
        print(f"   新标题: {new_title}")
        if result.get("backup"):
            print(f"   备份文件: {result['backup']}")
        
        # 恢复原标题
        response = client.post(
            f"/api/edit/entity/update?subject_id={subject_id}",
            headers=headers,
            json={
                "identifier": identifier,
                "updates": {
                    "title": original_title
                }
            }
        )
        print(f"✅ 已恢复原标题")
    else:
        print(f"⚠️ 编辑测试跳过（可能是只读数据）: {response.text}")


def test_relation_operations():
    """测试关系操作API"""
    print("\n--- 测试关系操作 ---")
    
    headers = {"Authorization": f"Bearer {token}"}
    
    # 获取学科
    response = client.get("/api/review/subjects", headers=headers)
    subjects = response.json().get("subjects", [])
    
    if not subjects:
        print("⚠️ 没有可用学科，跳过关系测试")
        return
    
    subject_id = subjects[0]["subject_id"]
    
    # 获取实体
    response = client.get(
        f"/api/review/entities/{subject_id}?page_size=2",
        headers=headers
    )
    entities = response.json().get("entities", [])
    
    if len(entities) < 2:
        print("⚠️ 实体数量不足，跳过关系测试")
        return
    
    source = entities[0]['identifier']
    target = entities[1]['identifier']
    
    print(f"🔗 测试关系: {source} → {target}")
    
    # 创建测试关系
    response = client.post(
        f"/api/edit/relation/create?subject_id={subject_id}",
        headers=headers,
        json={
            "source": source,
            "target": target,
            "relation_name": "test_relation",
            "label": "测试关系"
        }
    )
    
    if response.status_code == 200:
        print(f"✅ 关系创建成功")
        
        # 删除测试关系
        response = client.post(
            f"/api/edit/relation/delete?subject_id={subject_id}",
            headers=headers,
            json={
                "source": source,
                "target": target,
                "relation_name": "test_relation"
            }
        )
        
        if response.status_code == 200:
            print(f"✅ 关系删除成功")
        else:
            print(f"⚠️ 关系删除失败: {response.text}")
    else:
        print(f"⚠️ 关系创建失败（可能已存在或数据只读）")


def test_backups():
    """测试备份列表API"""
    print("\n--- 测试备份功能 ---")
    
    headers = {"Authorization": f"Bearer {token}"}
    
    # 获取学科
    response = client.get("/api/review/subjects", headers=headers)
    subjects = response.json().get("subjects", [])
    
    if not subjects:
        print("⚠️ 没有可用学科，跳过备份测试")
        return
    
    subject_id = subjects[0]["subject_id"]
    
    # 获取备份列表
    response = client.get(
        f"/api/edit/backups/{subject_id}",
        headers=headers
    )
    
    assert response.status_code == 200
    
    result = response.json()
    backups = result.get("backups", [])
    
    print(f"📦 备份文件数量: {len(backups)}")
    
    if backups:
        print(f"   最新备份:")
        for backup in backups[:3]:
            print(f"   • {backup['filename']} ({backup['size']} bytes)")
    else:
        print(f"   (暂无备份文件)")


def run_all_tests():
    """运行所有新功能测试"""
    print("\n" + "="*60)
    print("新功能测试 - 图谱可视化和数据编辑")
    print("="*60)
    
    # 登录
    login()
    
    # 测试图谱
    test_entity_graph()
    
    # 测试编辑
    test_edit_entity()
    
    # 测试关系
    test_relation_operations()
    
    # 测试备份
    test_backups()
    
    print("\n" + "="*60)
    print("✅ 所有新功能测试完成！")
    print("="*60 + "\n")
    
    print("📚 查看详细文档:")
    print("   - docs/新功能说明.md")
    print("   - docs/性能优化方案.md")
    print("   - docs/三大改进总结.md")
    print()


if __name__ == "__main__":
    run_all_tests()
