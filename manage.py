#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
知识图谱管理工具 - 统一入口
整合所有功能：生成图谱、更新索引、启动服务器、导入数据
"""

import sys
import argparse
from pathlib import Path

# 添加src目录到路径
sys.path.insert(0, str(Path(__file__).parent / "src"))

from config import PROJECT_ROOT, SUBJECT_CONFIG
from graph_generator import GraphGenerator
from update_index import main as update_index_main
from start_server import start_server


def generate_all():
    """生成所有学科图谱"""
    print("="*60)
    print("开始生成所有学科图谱...")
    print("="*60)
    
    for subject_name, config in SUBJECT_CONFIG.items():
        data_dir = config.get("data_dir")
        if not data_dir:
            continue
        
        output_name = config["files"][0].replace(".html", "")
        title = f"{subject_name}课标图谱"
        description = f"{config['display_name']}课程标准完整知识结构"
        
        print(f"\n生成{title}...")
        try:
            generator = GraphGenerator(data_dir)
            generator.load_main_graph()
            generator.generate_html(
                config["files"][0],
                title=title,
                description=description
            )
            print(f"✅ {title}生成完成")
        except Exception as e:
            print(f"❌ {title}生成失败: {e}")
    
    print("\n" + "="*60)
    print("🎉 所有图谱生成完成！")
    print("="*60)


def generate_subject(subject_name: str):
    """生成指定学科图谱"""
    if subject_name not in SUBJECT_CONFIG:
        print(f"❌ 未找到学科: {subject_name}")
        print(f"可用学科: {', '.join(SUBJECT_CONFIG.keys())}")
        return
    
    config = SUBJECT_CONFIG[subject_name]
    data_dir = config.get("data_dir")
    
    if not data_dir:
        print(f"❌ 学科 {subject_name} 未配置数据目录")
        return
    
    output_name = config["files"][0].replace(".html", "")
    title = f"{subject_name}课标图谱"
    description = f"{config['display_name']}课程标准完整知识结构"
    
    print(f"\n生成{title}...")
    try:
        generator = GraphGenerator(data_dir)
        generator.load_main_graph()
        generator.generate_html(
            config["files"][0],
            title=title,
            description=description
        )
        generator.generate_neo4j_cypher(
            str(PROJECT_ROOT / "图谱数据" / data_dir / "neo4j_import.cypher"),
            title=title
        )
        print(f"✅ {title}生成完成")
    except Exception as e:
        print(f"❌ {title}生成失败: {e}")


def list_subjects():
    """列出所有可用学科"""
    print("\n可用学科:")
    print("="*60)
    for subject_name, config in SUBJECT_CONFIG.items():
        icon = config.get("icon", "📚")
        display_name = config.get("display_name", subject_name)
        data_dir = config.get("data_dir", "未配置")
        print(f"{icon} {subject_name:10s} - {display_name:12s} (数据目录: {data_dir})")
    print("="*60)


def main():
    parser = argparse.ArgumentParser(
        description='知识图谱管理工具',
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="""
示例:
  %(prog)s generate --all              # 生成所有学科图谱
  %(prog)s generate --subject 义教数学  # 生成指定学科图谱
  %(prog)s list                        # 列出所有可用学科
  %(prog)s update-index                # 更新导航页面
  %(prog)s serve                       # 启动HTTP服务器
  %(prog)s serve --port 8080           # 指定端口启动服务器
        """
    )
    
    subparsers = parser.add_subparsers(dest='command', help='子命令')
    
    # 生成图谱命令
    generate_parser = subparsers.add_parser('generate', help='生成图谱')
    generate_group = generate_parser.add_mutually_exclusive_group(required=True)
    generate_group.add_argument('--all', action='store_true', help='生成所有学科图谱')
    generate_group.add_argument('--subject', type=str, help='生成指定学科图谱')
    
    # 列出学科命令
    subparsers.add_parser('list', help='列出所有可用学科')
    
    # 更新索引命令
    subparsers.add_parser('update-index', help='更新导航页面')
    
    # 启动服务器命令
    serve_parser = subparsers.add_parser('serve', help='启动HTTP服务器')
    serve_parser.add_argument('-p', '--port', type=int, default=8888,
                            help='端口号 (默认: 8888)')
    serve_parser.add_argument('-H', '--host', type=str, default='0.0.0.0',
                            help='监听地址 (默认: 0.0.0.0)')
    
    args = parser.parse_args()
    
    if not args.command:
        parser.print_help()
        return
    
    # 执行命令
    if args.command == 'generate':
        if args.all:
            generate_all()
        elif args.subject:
            generate_subject(args.subject)
    
    elif args.command == 'list':
        list_subjects()
    
    elif args.command == 'update-index':
        update_index_main()
    
    elif args.command == 'serve':
        start_server(port=args.port, host=args.host)


if __name__ == "__main__":
    main()
