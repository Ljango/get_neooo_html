#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
高中数学图谱 - 章节信息通路导出工具（分层设计）

设计思路：
1. 教材映射表：展示教材结构(Chapter/Section/Subsection)如何映射到课标内容(KeyPoint/Unit/Theme/Domain)
2. 课标关联表：展示单元如何关联到核心素养和学业质量
3. 完整路径表：展开所有完整路径（章->节->小节->要点->单元->...->学业质量）

方便学科老师分别审核：
- 教材到课标的映射是否完整准确
- 课标内容的逻辑关系是否正确
- 核心素养的培养是否覆盖到位
"""

import sys
import os
import re
sys.path.insert(0, os.path.join(os.path.dirname(__file__), '..', 'src'))

from dotenv import load_dotenv
from pathlib import Path
from neo4j import GraphDatabase
import pandas as pd
import json


def clean_cell_value(value):
    """清理Excel不支持的控制字符"""
    if value is None:
        return ''
    if isinstance(value, str):
        # 移除Excel不支持的控制字符（保留换行符、制表符）
        value = re.sub(r'[\x00-\x08\x0B-\x0C\x0E-\x1F]', '', value)
    return value


def get_driver():
    """获取Neo4j连接"""
    env_path = Path(__file__).parent.parent / '.env'
    load_dotenv(env_path)
    
    uri = f'{os.getenv("DB_SCHEME")}://{os.getenv("DB_HOST")}:{os.getenv("DB_PORT")}'
    return GraphDatabase.driver(uri, auth=(os.getenv('DB_USER'), os.getenv('DB_PASSWORD'))), os.getenv('DB_NAME')


def query_textbook_mapping(subject_label: str):
    """
    查询1: 教材映射表
    展示教材结构(Chapter/Section/Subsection)如何映射到课标内容(KeyPoint/Unit/Theme/Domain)
    每一行表示一个小节到课标内容的映射路径
    """
    driver, database = get_driver()
    
    query = f"""
    MATCH (chapter:Chapter:{subject_label})
    MATCH (chapter)-[:chapterHasSection]->(section:Section:{subject_label})
    MATCH (section)-[:sectionHasSubsection]->(subsection:Subsection:{subject_label})
    MATCH (subsection)-[:subsectionHasKeyPoint]->(keypoint:KeyPoint:{subject_label})
    MATCH (keypoint)-[:keyPointBelongsToUnit]->(unit:Unit:{subject_label})
    OPTIONAL MATCH (unit)-[:unitBelongsToTheme]->(theme:Theme:{subject_label})
    OPTIONAL MATCH (theme)-[:themeBelongsToDomain]->(domain:Domain:{subject_label})
    RETURN 
        chapter.title AS 章,
        chapter.identifier AS 章ID,
        section.title AS 节,
        section.identifier AS 节ID,
        subsection.title AS 小节,
        subsection.identifier AS 小节ID,
        keypoint.title AS 内容要点,
        keypoint.identifier AS 内容要点ID,
        unit.title AS 单元,
        unit.identifier AS 单元ID,
        unit.description AS 单元说明,
        theme.title AS 主题,
        theme.identifier AS 主题ID,
        domain.title AS 主线,
        domain.identifier AS 主线ID
    ORDER BY 章, 节, 小节, 内容要点
    """
    
    with driver.session(database=database) as session:
        result = session.run(query)
        records = [dict(record) for record in result]
    
    driver.close()
    return records


def query_curriculum_standard_mapping(subject_label: str):
    """
    查询2: 课标关联表
    展示单元如何关联到核心素养和学业质量
    每一行表示一个单元培养某个核心素养的路径
    """
    driver, database = get_driver()
    
    query = f"""
    MATCH (unit:Unit:{subject_label})
    MATCH (unit)-[:unitCultivatesCoreLiteracy]->(coreLiteracy:CoreLiteracy:{subject_label})
    OPTIONAL MATCH (coreLiteracy)-[:coreLiteracyBelongsToAcademicQuality]->(aq:AcademicQuality:{subject_label})
    OPTIONAL MATCH (unit)-[:unitBelongsToTheme]->(theme:Theme:{subject_label})
    OPTIONAL MATCH (theme)-[:themeBelongsToDomain]->(domain:Domain:{subject_label})
    RETURN 
        unit.title AS 单元,
        unit.identifier AS 单元ID,
        unit.description AS 单元说明,
        theme.title AS 主题,
        domain.title AS 主线,
        coreLiteracy.title AS 核心素养,
        coreLiteracy.identifier AS 核心素养ID,
        coreLiteracy.description AS 核心素养说明,
        aq.title AS 学业质量等级,
        aq.identifier AS 学业质量ID
    ORDER BY 主线, 主题, 单元, 核心素养
    """
    
    with driver.session(database=database) as session:
        result = session.run(query)
        records = [dict(record) for record in result]
    
    driver.close()
    return records


def query_complete_paths(subject_label: str):
    """
    查询3: 完整路径表
    展开所有完整路径（章->节->小节->要点->单元->主题->主线->核心素养->学业质量）
    每一行是一条从教材到课标的完整信息通路
    """
    driver, database = get_driver()
    
    query = f"""
    MATCH path = (chapter:Chapter:{subject_label})-[:chapterHasSection]->
                 (section:Section:{subject_label})-[:sectionHasSubsection]->
                 (subsection:Subsection:{subject_label})-[:subsectionHasKeyPoint]->
                 (keypoint:KeyPoint:{subject_label})-[:keyPointBelongsToUnit]->
                 (unit:Unit:{subject_label})-[:unitBelongsToTheme]->
                 (theme:Theme:{subject_label})-[:themeBelongsToDomain]->
                 (domain:Domain:{subject_label})
    MATCH (unit)-[:unitCultivatesCoreLiteracy]->(coreLiteracy:CoreLiteracy:{subject_label})
    OPTIONAL MATCH (coreLiteracy)-[:coreLiteracyBelongsToAcademicQuality]->(aq:AcademicQuality:{subject_label})
    RETURN 
        chapter.title AS 章,
        section.title AS 节,
        subsection.title AS 小节,
        keypoint.title AS 内容要点,
        unit.title AS 单元,
        theme.title AS 主题,
        domain.title AS 主线,
        coreLiteracy.title AS 核心素养,
        aq.title AS 学业质量等级,
        chapter.identifier AS 章ID,
        section.identifier AS 节ID,
        subsection.identifier AS 小节ID,
        keypoint.identifier AS 内容要点ID,
        unit.identifier AS 单元ID
    ORDER BY 章, 节, 小节, 内容要点, 单元, 核心素养
    """
    
    with driver.session(database=database) as session:
        result = session.run(query)
        records = [dict(record) for record in result]
    
    driver.close()
    return records


def query_textbook_summary(subject_label: str):
    """
    查询4: 教材结构概览表
    按章-节-小节-内容要点的层级展示，不展开核心素养
    """
    driver, database = get_driver()
    
    query = f"""
    MATCH (chapter:Chapter:{subject_label})
    MATCH (chapter)-[:chapterHasSection]->(section:Section:{subject_label})
    MATCH (section)-[:sectionHasSubsection]->(subsection:Subsection:{subject_label})
    MATCH (subsection)-[:subsectionHasKeyPoint]->(keypoint:KeyPoint:{subject_label})
    MATCH (keypoint)-[:keyPointBelongsToUnit]->(unit:Unit:{subject_label})
    OPTIONAL MATCH (unit)-[:unitBelongsToTheme]->(theme:Theme:{subject_label})
    OPTIONAL MATCH (theme)-[:themeBelongsToDomain]->(domain:Domain:{subject_label})
    CALL {{
        WITH unit
        MATCH (unit)-[:unitCultivatesCoreLiteracy]->(cl:CoreLiteracy:{subject_label})
        RETURN count(cl) AS 核心素养数量
    }}
    RETURN 
        chapter.title AS 章,
        chapter.identifier AS 章ID,
        section.title AS 节,
        section.identifier AS 节ID,
        subsection.title AS 小节,
        subsection.identifier AS 小节ID,
        keypoint.title AS 内容要点,
        keypoint.identifier AS 内容要点ID,
        unit.title AS 单元,
        unit.identifier AS 单元ID,
        unit.description AS 单元说明,
        theme.title AS 主题,
        theme.identifier AS 主题ID,
        domain.title AS 主线,
        domain.identifier AS 主线ID,
        核心素养数量
    ORDER BY 章, 节, 小节, 内容要点
    """
    
    with driver.session(database=database) as session:
        result = session.run(query)
        records = [dict(record) for record in result]
    
    driver.close()
    return records


def export_to_excel(subject_label: str, output_file: str = None):
    """
    导出所有查询结果到一个Excel文件（多个sheet）
    """
    if not output_file:
        output_dir = Path(__file__).parent
        output_file = output_dir / f"{subject_label}_章节信息通路_分层.xlsx"
    
    print(f"\n📊 开始导出 {subject_label} 的章节信息通路...")
    print("="*80)
    
    with pd.ExcelWriter(output_file, engine='openpyxl') as writer:
        # Sheet 1: 教材结构概览（推荐用于审核）
        print("\n📝 查询1: 教材结构概览表...")
        records = query_textbook_summary(subject_label)
        df = pd.DataFrame(records)
        # 清理所有字符串值
        for col in df.columns:
            if df[col].dtype == 'object':
                df[col] = df[col].apply(clean_cell_value)
        print(f"   ✓ {len(df)} 条记录")
        df.to_excel(writer, sheet_name='1-教材结构概览', index=False)
        
        # Sheet 2: 课标关联表
        print("\n📝 查询2: 课标关联表（单元->核心素养->学业质量）...")
        records = query_curriculum_standard_mapping(subject_label)
        df = pd.DataFrame(records)
        # 清理所有字符串值
        for col in df.columns:
            if df[col].dtype == 'object':
                df[col] = df[col].apply(clean_cell_value)
        print(f"   ✓ {len(df)} 条记录")
        df.to_excel(writer, sheet_name='2-课标关联表', index=False)
        
        # Sheet 3: 完整路径表（展开所有路径）
        print("\n📝 查询3: 完整路径表（展开所有路径）...")
        records = query_complete_paths(subject_label)
        df = pd.DataFrame(records)
        # 清理所有字符串值
        for col in df.columns:
            if df[col].dtype == 'object':
                df[col] = df[col].apply(clean_cell_value)
        print(f"   ✓ {len(df)} 条记录")
        df.to_excel(writer, sheet_name='3-完整路径表', index=False)
        
        # Sheet 4: 教材映射明细（所有映射关系）
        print("\n📝 查询4: 教材映射明细...")
        records = query_textbook_mapping(subject_label)
        df = pd.DataFrame(records)
        # 清理所有字符串值
        for col in df.columns:
            if df[col].dtype == 'object':
                df[col] = df[col].apply(clean_cell_value)
        print(f"   ✓ {len(df)} 条记录")
        df.to_excel(writer, sheet_name='4-教材映射明细', index=False)
    
    print(f"\n✅ 导出完成: {output_file}")
    print("="*80)
    print("\n📚 Sheet说明:")
    print("  1-教材结构概览: 按章节层级展示，每行一个【小节->内容要点->单元】映射，显示核心素养数量")
    print("  2-课标关联表: 展示【单元->核心素养->学业质量】的关联关系")
    print("  3-完整路径表: 展开所有【章->节->小节->要点->单元->主题->主线->素养->质量】完整路径")
    print("  4-教材映射明细: 详细的教材到课标的映射关系（含ID）")
    print("\n💡 审核建议:")
    print("  - 使用【1-教材结构概览】快速浏览教材结构和课标映射")
    print("  - 使用【2-课标关联表】检查核心素养的覆盖情况")
    print("  - 使用【3-完整路径表】审核完整的信息通路")
    print("  - 使用【4-教材映射明细】排查具体的映射问题")
    return output_file


def print_preview(subject_label: str):
    """打印预览数据"""
    print(f"\n预览 {subject_label} 的数据结构...")
    print("="*80)
    
    # 预览教材结构概览
    print("\n【教材结构概览表 - 前10条】")
    print("-"*80)
    records = query_textbook_summary(subject_label)
    df = pd.DataFrame(records[:10])
    print(f"列名: {list(df.columns)}")
    if len(df) > 0:
        print(df.to_string(index=False))
    print(f"\n总计: {len(records)} 条记录\n")
    
    # 预览课标关联表
    print("\n【课标关联表 - 前10条】")
    print("-"*80)
    records = query_curriculum_standard_mapping(subject_label)
    df = pd.DataFrame(records[:10])
    print(f"列名: {list(df.columns)}")
    if len(df) > 0:
        print(df.to_string(index=False))
    print(f"\n总计: {len(records)} 条记录\n")


def main():
    import argparse
    
    parser = argparse.ArgumentParser(
        description='高中数学图谱 - 章节信息通路导出工具（分层设计）',
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog='''
示例:
  # 导出高中数学
  python3 cypher_queries/导出章节信息通路_分层.py
  
  # 指定其他学科
  python3 cypher_queries/导出章节信息通路_分层.py --subject GaoZhongWuLi
  
  # 预览数据结构
  python3 cypher_queries/导出章节信息通路_分层.py --preview
        '''
    )
    parser.add_argument('--subject', type=str, default='GaoZhongShuXue',
                       help='学科标签 (默认: GaoZhongShuXue)')
    parser.add_argument('--output', '-o', type=str, default=None,
                       help='输出Excel文件路径')
    parser.add_argument('--preview', action='store_true',
                       help='仅预览数据结构，不导出')
    
    args = parser.parse_args()
    
    if args.preview:
        print_preview(args.subject)
    else:
        export_to_excel(args.subject, args.output)


if __name__ == '__main__':
    main()
