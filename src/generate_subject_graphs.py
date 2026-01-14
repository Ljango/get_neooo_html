#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
生成各学科图谱
"""

from graph_generator import GraphGenerator
from pathlib import Path

PROJECT_ROOT = Path(__file__).parent.parent
DATA_ROOT = PROJECT_ROOT / "图谱数据"


def generate_physics_graph():
    """生成义务物理图谱"""
    print("\n" + "="*60)
    print("生成义务物理课标图谱")
    print("="*60)
    
    generator = GraphGenerator("义务物理")
    generator.load_main_graph()
    
    # 生成HTML
    generator.generate_html(
        "义务物理_课标.html",
        title="义务教育物理课标图谱",
        description="义务教育阶段物理课程标准完整知识结构"
    )
    
    # 生成Neo4j脚本
    generator.generate_neo4j_cypher(
        str(DATA_ROOT / "义务物理" / "neo4j_import.cypher"),
        title="义务教育物理课标图谱"
    )
    
    print(f"\n✅ 义务物理图谱生成完成")
    print(f"   - HTML: static/义务物理_课标.html")
    print(f"   - Neo4j: 图谱数据/义务物理/neo4j_import.cypher")


def generate_chemistry_graph():
    """生成义务教育化学图谱"""
    print("\n" + "="*60)
    print("生成义务教育化学课标图谱")
    print("="*60)
    
    generator = GraphGenerator("义务教育化学")
    generator.load_main_graph()
    
    # 生成HTML
    generator.generate_html(
        "义务教育化学_课标.html",
        title="义务教育化学课标图谱",
        description="义务教育阶段化学课程标准完整知识结构"
    )
    
    # 生成Neo4j脚本
    generator.generate_neo4j_cypher(
        str(DATA_ROOT / "义务教育化学" / "neo4j_import.cypher"),
        title="义务教育化学课标图谱"
    )
    
    print(f"\n✅ 义务教育化学图谱生成完成")
    print(f"   - HTML: static/义务教育化学_课标.html")
    print(f"   - Neo4j: 图谱数据/义务教育化学/neo4j_import.cypher")


def generate_geography_graph():
    """生成义教地理图谱"""
    print("\n" + "="*60)
    print("生成义教地理课标图谱")
    print("="*60)
    
    generator = GraphGenerator("义教地理0B03")
    generator.load_main_graph()
    
    # 生成HTML
    generator.generate_html(
        "义教地理_课标.html",
        title="义教地理课标图谱",
        description="义务教育阶段地理课程标准完整知识结构"
    )
    
    # 生成Neo4j脚本
    generator.generate_neo4j_cypher(
        str(DATA_ROOT / "义教地理0B03" / "neo4j_import.cypher"),
        title="义教地理课标图谱"
    )
    
    print(f"\n✅ 义教地理图谱生成完成")
    print(f"   - HTML: static/义教地理_课标.html")
    print(f"   - Neo4j: 图谱数据/义教地理0B03/neo4j_import.cypher")


def main():
    """主函数"""
    generate_physics_graph()
    generate_chemistry_graph()
    generate_geography_graph()
    
    print("\n" + "="*60)
    print("所有图谱生成完成！")
    print("="*60)
    print("\n请更新 static/index.html 添加新图谱的导航链接")


if __name__ == "__main__":
    main()
