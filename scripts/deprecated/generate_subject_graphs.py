#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
生成各学科图谱
支持所有学科的HTML和Neo4j脚本生成
"""

from graph_generator import GraphGenerator
from config import PROJECT_ROOT, DATA_ROOT


def generate_graph(subject_dir: str, output_name: str, title: str, description: str):
    """
    通用图谱生成函数
    
    Args:
        subject_dir: 学科数据目录名
        output_name: 输出文件名（不含.html）
        title: 图谱标题
        description: 图谱描述
    """
    print("\n" + "="*60)
    print(f"生成{title}")
    print("="*60)
    
    generator = GraphGenerator(subject_dir)
    generator.load_main_graph()
    
    # 生成HTML
    generator.generate_html(
        f"{output_name}.html",
        title=title,
        description=description
    )
    
    # 生成Neo4j脚本
    generator.generate_neo4j_cypher(
        str(DATA_ROOT / subject_dir / "neo4j_import.cypher"),
        title=title
    )
    
    print(f"\n✅ {title}生成完成")
    print(f"   - HTML: static/{output_name}.html")
    print(f"   - Neo4j: 图谱数据/{subject_dir}/neo4j_import.cypher")


# ========== 高中学科 ==========

def generate_highschool_math_graph():
    """生成高中数学图谱"""
    generate_graph(
        subject_dir="高中数学-with-books",
        output_name="高中数学_课标",
        title="高中数学课标图谱",
        description="高中阶段数学课程标准完整知识结构"
    )


def generate_highschool_physics_graph():
    """生成高中物理图谱（with-books版本）"""
    generate_graph(
        subject_dir="高中物理-with-books",
        output_name="高中物理_课标",
        title="高中物理课标图谱",
        description="高中阶段物理课程标准完整知识结构（含教材）"
    )


def generate_highschool_chemistry_graph():
    """生成高中化学图谱"""
    generate_graph(
        subject_dir="高中化学",
        output_name="高中化学_课标",
        title="高中化学课标图谱",
        description="高中阶段化学课程标准完整知识结构"
    )


def generate_highschool_biology_graph():
    """生成高中生物图谱"""
    generate_graph(
        subject_dir="高中生物",
        output_name="高中生物_课标",
        title="高中生物课标图谱",
        description="高中阶段生物课程标准完整知识结构"
    )


# ========== 义教学科 ==========

def generate_physics_graph():
    """生成义教物理图谱（with-books版本）"""
    generate_graph(
        subject_dir="义务物理-with-books",
        output_name="义教物理_课标",
        title="义教物理课标图谱",
        description="义务教育阶段物理课程标准完整知识结构（含教材）"
    )


def generate_physics_89_graph():
    """生成义教物理图谱（8、9全一册版本）"""
    generate_graph(
        subject_dir="义务物理（8、9全一册）",
        output_name="义教物理_89全一册",
        title="义教物理课标图谱（8、9全一册）",
        description="义务教育阶段物理课程标准（8、9全一册版本）"
    )


def generate_chemistry_graph():
    """生成义教化学图谱"""
    generate_graph(
        subject_dir="义教化学-with-books",
        output_name="义教化学_课标",
        title="义教化学课标图谱",
        description="义务教育阶段化学课程标准完整知识结构"
    )


def generate_geography_graph():
    """生成义教地理图谱"""
    generate_graph(
        subject_dir="义教地理",
        output_name="义教地理_课标",
        title="义教地理课标图谱",
        description="义务教育阶段地理课程标准完整知识结构"
    )


def generate_biology_graph():
    """生成义教生物图谱"""
    generate_graph(
        subject_dir="义教生物",
        output_name="义教生物_课标",
        title="义教生物课标图谱",
        description="义务教育阶段生物课程标准完整知识结构"
    )


def generate_math_graph():
    """生成义教数学图谱"""
    generate_graph(
        subject_dir="义教数学_1231",
        output_name="义教数学_课标",
        title="义教数学课标图谱",
        description="义务教育阶段数学课程标准完整知识结构"
    )


def main():
    """主函数 - 生成所有学科图谱"""
    print("="*60)
    print("开始生成所有学科图谱...")
    print("="*60)
    
    # 高中学科
    generate_highschool_math_graph()
    generate_highschool_physics_graph()
    generate_highschool_chemistry_graph()
    generate_highschool_biology_graph()
    
    # 义教学科
    generate_physics_graph()
    generate_physics_89_graph()
    generate_chemistry_graph()
    generate_geography_graph()
    generate_biology_graph()
    generate_math_graph()
    
    print("\n" + "="*60)
    print("🎉 所有图谱生成完成！")
    print("="*60)
    print("\n请运行 python3 src/update_index.py 更新导航页面")


if __name__ == "__main__":
    main()
