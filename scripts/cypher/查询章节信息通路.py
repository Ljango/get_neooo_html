#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
高中数学图谱 - 章节信息通路查询工具
提取每个Chapter关联的完整知识体系路径
"""

import sys
import os
sys.path.insert(0, os.path.join(os.path.dirname(__file__), '..', 'src'))

from dotenv import load_dotenv
from pathlib import Path
from neo4j import GraphDatabase
import pandas as pd
import json


def get_driver():
    """获取Neo4j连接"""
    env_path = Path(__file__).parent.parent / '.env'
    load_dotenv(env_path)
    
    uri = f'{os.getenv("DB_SCHEME")}://{os.getenv("DB_HOST")}:{os.getenv("DB_PORT")}'
    return GraphDatabase.driver(uri, auth=(os.getenv('DB_USER'), os.getenv('DB_PASSWORD'))), os.getenv('DB_NAME')


def query_chapter_info_paths(subject_label: str = "GaoZhongShuXue"):
    """
    查询每个Chapter的完整信息通路
    
    Args:
        subject_label: 学科标签，如 GaoZhongShuXue
        
    Returns:
        查询结果列表
    """
    driver, database = get_driver()
    
    query = f"""
    MATCH (chapter:Chapter:{subject_label})
    // 教材结构路径
    OPTIONAL MATCH (chapter)-[:chapterHasSection]->(section:Section:{subject_label})
    OPTIONAL MATCH (section)-[:sectionHasSubsection]->(subsection:Subsection:{subject_label})
    OPTIONAL MATCH (subsection)-[:subsectionHasKeyPoint]->(keypoint:KeyPoint:{subject_label})
    OPTIONAL MATCH (keypoint)-[:keyPointBelongsToUnit]->(unit:Unit:{subject_label})
    // 主题-主线路径
    OPTIONAL MATCH (unit)-[:unitBelongsToTheme]->(theme:Theme:{subject_label})
    OPTIONAL MATCH (theme)-[:themeBelongsToDomain]->(domain:Domain:{subject_label})
    // 专题-课程模块路径
    OPTIONAL MATCH (unit)<-[:topicIncludesUnit]-(topic:Topic:{subject_label})
    OPTIONAL MATCH (topic)-[:topicBelongsToCourseModule]->(courseModule:CourseModule:{subject_label})
    // 核心素养-学业质量路径
    OPTIONAL MATCH (unit)-[:unitCultivatesCoreLiteracy]->(coreLiteracy:CoreLiteracy:{subject_label})
    OPTIONAL MATCH (coreLiteracy)-[:coreLiteracyBelongsToAcademicQuality]->(academicQuality:AcademicQuality:{subject_label})
    // 课程模块-学业质量路径
    OPTIONAL MATCH (courseModule)-[:courseModuleBelongsToAcademicQuality]->(aq2:AcademicQuality:{subject_label})
    RETURN 
        chapter.title AS 章,
        chapter.identifier AS 章ID,
        collect(DISTINCT section.title) AS 节列表,
        collect(DISTINCT subsection.title) AS 小节列表,
        collect(DISTINCT keypoint.title) AS 内容要点列表,
        collect(DISTINCT unit.title) AS 单元列表,
        collect(DISTINCT theme.title) AS 主题列表,
        collect(DISTINCT domain.title) AS 主线列表,
        collect(DISTINCT topic.title) AS 专题列表,
        collect(DISTINCT courseModule.title) AS 课程模块列表,
        collect(DISTINCT coreLiteracy.title) AS 核心素养列表,
        collect(DISTINCT academicQuality.title) + collect(DISTINCT aq2.title) AS 学业质量列表
    ORDER BY chapter.title
    """
    
    with driver.session(database=database) as session:
        result = session.run(query)
        records = list(result)
    
    driver.close()
    return records


def export_to_excel(records, output_file: str):
    """
    导出查询结果到Excel
    
    Args:
        records: 查询结果
        output_file: 输出文件路径
    """
    rows = []
    for r in records:
        # 过滤掉None值
        sections = [s for s in r['节列表'] if s]
        subsections = [s for s in r['小节列表'] if s]
        keypoints = [s for s in r['内容要点列表'] if s]
        units = [s for s in r['单元列表'] if s]
        themes = [s for s in r['主题列表'] if s]
        domains = [s for s in r['主线列表'] if s]
        topics = [s for s in r['专题列表'] if s]
        courseModules = [s for s in r['课程模块列表'] if s]
        coreLiteracies = [s for s in r['核心素养列表'] if s]
        academicQualities = [s for s in r['学业质量列表'] if s]
        
        rows.append({
            '章': r['章'],
            '章ID': r['章ID'],
            '节(教材)': '\n'.join(sections),
            '节数量': len(sections),
            '小节(教材)': '\n'.join(subsections),
            '小节数量': len(subsections),
            '内容要点': '\n'.join(keypoints),
            '内容要点数量': len(keypoints),
            '单元': '\n'.join(units),
            '单元数量': len(units),
            '主题': '\n'.join(themes),
            '主题数量': len(themes),
            '主线/领域': '\n'.join(domains),
            '主线数量': len(domains),
            '专题': '\n'.join(topics),
            '专题数量': len(topics),
            '课程模块': '\n'.join(courseModules),
            '课程模块数量': len(courseModules),
            '核心素养': '\n'.join(coreLiteracies),
            '核心素养数量': len(coreLiteracies),
            '学业质量': '\n'.join(list(set(academicQualities))),
            '学业质量数量': len(set(academicQualities))
        })
    
    df = pd.DataFrame(rows)
    df.to_excel(output_file, index=False, engine='openpyxl')
    print(f"✅ 已导出到: {output_file}")


def print_summary(records):
    """打印查询结果摘要"""
    print("\n" + "="*80)
    print("高中数学图谱 - 章节信息通路查询结果")
    print("="*80)
    
    print(f"\n{'章':<28} 节  小节 要点 单元 主题 主线 专题 模块 素养 质量")
    print("-"*80)
    
    for r in records:
        sections = [s for s in r['节列表'] if s]
        subsections = [s for s in r['小节列表'] if s]
        keypoints = [s for s in r['内容要点列表'] if s]
        units = [s for s in r['单元列表'] if s]
        themes = [s for s in r['主题列表'] if s]
        domains = [s for s in r['主线列表'] if s]
        topics = [s for s in r['专题列表'] if s]
        courseModules = [s for s in r['课程模块列表'] if s]
        coreLiteracies = [s for s in r['核心素养列表'] if s]
        academicQualities = [s for s in r['学业质量列表'] if s]
        
        print(f"{r['章']:<28} {len(sections):>2}  {len(subsections):>4} {len(keypoints):>4} "
              f"{len(units):>4} {len(themes):>4} {len(domains):>4} {len(topics):>4} "
              f"{len(courseModules):>4} {len(coreLiteracies):>4} {len(set(academicQualities)):>4}")


def print_detail(records, chapter_title: str = None):
    """打印详细信息"""
    for r in records:
        if chapter_title and r['章'] != chapter_title:
            continue
        
        print("\n" + "="*80)
        print(f"【章】{r['章']}")
        print("="*80)
        
        sections = [s for s in r['节列表'] if s]
        subsections = [s for s in r['小节列表'] if s]
        keypoints = [s for s in r['内容要点列表'] if s]
        units = [s for s in r['单元列表'] if s]
        themes = [s for s in r['主题列表'] if s]
        domains = [s for s in r['主线列表'] if s]
        topics = [s for s in r['专题列表'] if s]
        courseModules = [s for s in r['课程模块列表'] if s]
        coreLiteracies = [s for s in r['核心素养列表'] if s]
        academicQualities = [s for s in r['学业质量列表'] if s]
        
        print(f"\n【节】(教材关联) - {len(sections)}个")
        for s in sections:
            print(f"  - {s}")
        
        print(f"\n【小节】(教材关联) - {len(subsections)}个")
        for s in subsections[:10]:
            print(f"  - {s}")
        if len(subsections) > 10:
            print(f"  ... 还有 {len(subsections)-10} 个")
        
        print(f"\n【内容要点】 - {len(keypoints)}个")
        for s in keypoints:
            print(f"  - {s}")
        
        print(f"\n【单元】 - {len(units)}个")
        for s in units:
            print(f"  - {s}")
        
        print(f"\n【主题】 - {len(themes)}个")
        for s in themes:
            print(f"  - {s}")
        
        print(f"\n【主线/领域】 - {len(domains)}个")
        for s in domains:
            print(f"  - {s}")
        
        print(f"\n【专题】 - {len(topics)}个")
        for s in topics:
            print(f"  - {s}")
        
        print(f"\n【课程模块】 - {len(courseModules)}个")
        for s in courseModules:
            print(f"  - {s}")
        
        print(f"\n【核心素养】 - {len(coreLiteracies)}个")
        for s in coreLiteracies[:10]:
            print(f"  - {s}")
        if len(coreLiteracies) > 10:
            print(f"  ... 还有 {len(coreLiteracies)-10} 个")
        
        print(f"\n【学业质量】 - {len(set(academicQualities))}个")
        for s in list(set(academicQualities)):
            print(f"  - {s}")
        
        if chapter_title:
            break


def main():
    import argparse
    
    parser = argparse.ArgumentParser(description='高中数学图谱 - 章节信息通路查询')
    parser.add_argument('--subject', type=str, default='GaoZhongShuXue',
                       help='学科标签 (默认: GaoZhongShuXue)')
    parser.add_argument('--output', '-o', type=str, default=None,
                       help='输出Excel文件路径')
    parser.add_argument('--detail', '-d', type=str, default=None,
                       help='显示指定章节的详细信息')
    parser.add_argument('--all-details', action='store_true',
                       help='显示所有章节的详细信息')
    
    args = parser.parse_args()
    
    print(f"📊 查询 {args.subject} 的章节信息通路...")
    records = query_chapter_info_paths(args.subject)
    
    if not records:
        print("❌ 未查询到数据")
        return
    
    # 打印摘要
    print_summary(records)
    
    # 打印详情
    if args.detail:
        print_detail(records, args.detail)
    elif args.all_details:
        print_detail(records)
    
    # 导出到Excel
    if args.output:
        export_to_excel(records, args.output)
    else:
        # 默认导出
        output_dir = Path(__file__).parent
        output_file = output_dir / f"{args.subject}_章节信息通路.xlsx"
        export_to_excel(records, str(output_file))


if __name__ == '__main__':
    main()
