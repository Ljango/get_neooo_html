#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
全量更新脚本
清除并重新导入所有学科数据到 Neo4j
"""

import sys
from neo4j_importer import import_all_subjects

def main():
    # 检查命令行参数
    auto_confirm = '--yes' in sys.argv or '-y' in sys.argv
    
    print("="*80)
    print("🔄 Neo4j 全量更新")
    print("="*80)
    print("\n⚠️  警告：此操作将清除所有学科的旧数据并重新导入！")
    print("\n准备导入的学科：")
    
    from config import SUBJECT_CONFIG
    for i, (subject_name, config) in enumerate(SUBJECT_CONFIG.items(), 1):
        print(f"   {i:2d}. {config['display_name']:20s} ({config['data_dir']})")
    
    print(f"\n共 {len(SUBJECT_CONFIG)} 个学科")
    print("\n" + "="*80)
    
    # 确认操作
    if not auto_confirm:
        response = input("\n确认执行全量更新? (yes/no): ")
        if response.lower() != 'yes':
            print("❌ 已取消操作")
            return 1
    else:
        print("\n✅ 自动确认模式（--yes）")
    
    print("\n开始全量更新...")
    print("="*80)
    
    # 执行全量导入（清除旧数据）
    results = import_all_subjects(env_file='.env', clear_first=True)
    
    # 统计结果
    success_count = sum(1 for s in results.values() if s)
    failed_count = len(results) - success_count
    
    print("\n" + "="*80)
    print("📊 全量更新完成")
    print("="*80)
    print(f"✅ 成功: {success_count} 个学科")
    print(f"❌ 失败: {failed_count} 个学科")
    
    if failed_count > 0:
        print("\n失败的学科：")
        for subject, success in results.items():
            if not success:
                print(f"   - {subject}")
    
    return 0 if failed_count == 0 else 1

if __name__ == '__main__':
    sys.exit(main())
