#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
批量生成所有学科的HTML图谱
"""

from graph_generator import GraphGenerator
from config import SUBJECT_CONFIG, DATA_ROOT
import sys

def generate_subject_html(subject_name: str, config: dict) -> bool:
    """
    生成单个学科的HTML
    
    Args:
        subject_name: 学科名称
        config: 学科配置
        
    Returns:
        是否成功
    """
    try:
        print(f"\n{'='*80}")
        print(f"📊 生成 {config['display_name']} HTML图谱")
        print(f"{'='*80}")
        
        data_dir = config['data_dir']
        display_name = config['display_name']
        
        # 创建生成器
        generator = GraphGenerator(data_dir)
        generator.load_main_graph()
        
        # 确定输出文件名
        if config['files']:
            # 使用配置中的第一个文件名
            output_name = config['files'][0]
        else:
            # 生成默认文件名
            output_name = f"{display_name}_课标.html"
        
        # 生成HTML
        generator.generate_html(
            output_name,
            title=f"{display_name}课标图谱",
            description=f"{display_name}课程标准完整知识结构"
        )
        
        print(f"✅ {display_name} 生成成功")
        print(f"   文件: static/{output_name}")
        return True
        
    except Exception as e:
        print(f"❌ {display_name} 生成失败: {e}")
        return False


def generate_all_subjects():
    """生成所有学科的HTML图谱"""
    print("="*80)
    print("📚 批量生成所有学科HTML图谱")
    print("="*80)
    print(f"\n准备生成 {len(SUBJECT_CONFIG)} 个学科的HTML图谱\n")
    
    results = {}
    
    for subject_name, config in SUBJECT_CONFIG.items():
        success = generate_subject_html(subject_name, config)
        results[subject_name] = success
    
    # 统计结果
    success_count = sum(1 for s in results.values() if s)
    failed_count = len(results) - success_count
    
    print("\n" + "="*80)
    print("📊 生成结果汇总")
    print("="*80)
    
    if failed_count > 0:
        print(f"\n❌ 失败的学科 ({failed_count}个)：")
        for subject, success in results.items():
            if not success:
                config = SUBJECT_CONFIG[subject]
                print(f"   - {config['display_name']}")
    
    print(f"\n✅ 成功: {success_count}/{len(results)} 个学科")
    print("="*80)
    
    return success_count == len(results)


if __name__ == '__main__':
    success = generate_all_subjects()
    sys.exit(0 if success else 1)
