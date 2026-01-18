#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
数据导入脚本（向后兼容包装器）

此脚本已重构，请使用新的统一入口：
  python3 manage.py import --subject 高中数学
  python3 manage.py import --all

或直接使用新模块：
  python3 src/neo4j_importer.py 高中数学
"""

import sys
from pathlib import Path

# 添加src目录到路径
sys.path.insert(0, str(Path(__file__).parent / "src"))

# 导入新模块
from neo4j_importer import Neo4jImporter, import_subject, import_all_subjects, SUBJECT_CONFIG

# 向后兼容别名
DataImporter = Neo4jImporter


def main():
    """主函数 - 向后兼容入口"""
    print("="*60)
    print("⚠️  提示: 此脚本已重构")
    print("   推荐使用新的统一入口:")
    print("   python3 manage.py import --subject <学科名称>")
    print("   python3 manage.py import --all")
    print("="*60)
    
    if len(sys.argv) < 2:
        print("\n用法: python import_data.py <学科名称> [环境配置文件]")
        print("\n可用学科:")
        for name, config in SUBJECT_CONFIG.items():
            print(f"  - {name} (Neo4j标签: {config.get('neo4j_label', 'N/A')})")
        print("\n示例:")
        print("  python import_data.py 高中数学")
        print("  python import_data.py 义教物理 .env.prod")
        sys.exit(1)
    
    subject = sys.argv[1]
    env = sys.argv[2] if len(sys.argv) > 2 else '.env'
    
    print(f"\n导入学科: {subject}")
    print(f"环境配置: {env}\n")
    
    success = import_subject(subject, env)
    sys.exit(0 if success else 1)


if __name__ == '__main__':
    main()
