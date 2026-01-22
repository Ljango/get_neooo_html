#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
知识图谱管理工具 - 统一入口
整合所有功能：生成图谱、更新索引、启动服务器、导入数据到Neo4j
"""

import sys
import argparse
from pathlib import Path

# 添加src目录到路径
sys.path.insert(0, str(Path(__file__).parent / "src"))

from config import PROJECT_ROOT, SUBJECT_CONFIG, DATA_ROOT
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
        neo4j_label = config.get("neo4j_label", "未配置")
        print(f"{icon} {subject_name:10s} - {display_name:12s}")
        print(f"   数据目录: {data_dir}")
        print(f"   Neo4j标签: {neo4j_label}")
    print("="*60)


def import_subject_to_neo4j(subject_name: str, env_file: str = '.env', clear_first: bool = False, env_type: str = 'local'):
    """导入指定学科数据到Neo4j"""
    try:
        from neo4j_importer import import_subject
        success = import_subject(subject_name, env_file, clear_first, env_type)
        if not success:
            print(f"❌ {subject_name} 导入失败")
    except ImportError as e:
        print(f"❌ 导入模块加载失败: {e}")
        print("请确保已安装 neo4j 驱动: pip install neo4j python-dotenv")
    except Exception as e:
        print(f"❌ 导入失败: {e}")


def import_all_to_neo4j(env_file: str = '.env', clear_first: bool = False, env_type: str = 'local'):
    """导入所有学科数据到Neo4j"""
    try:
        from neo4j_importer import import_all_subjects
        import_all_subjects(env_file, clear_first, env_type)
    except ImportError as e:
        print(f"❌ 导入模块加载失败: {e}")
        print("请确保已安装 neo4j 驱动: pip install neo4j python-dotenv")
    except Exception as e:
        print(f"❌ 导入失败: {e}")


def sync_subject(subject_name: str):
    """同步指定学科：生成HTML + 更新索引（一步到位）"""
    print("="*60)
    print(f"🔄 开始同步学科: {subject_name}")
    print("="*60)
    
    # 步骤1: 检查配置
    if subject_name not in SUBJECT_CONFIG:
        print(f"❌ 未找到学科配置: {subject_name}")
        print(f"\n💡 提示: 请先在 src/config.py 的 SUBJECT_CONFIG 中添加该学科配置")
        print(f"可用学科: {', '.join(SUBJECT_CONFIG.keys())}")
        return False
    
    config = SUBJECT_CONFIG[subject_name]
    data_dir_name = config.get("data_dir")
    
    if not data_dir_name:
        print(f"❌ 学科 {subject_name} 未配置数据目录")
        return False
    
    # 步骤2: 检查数据目录
    data_dir_path = DATA_ROOT / data_dir_name
    if not data_dir_path.exists():
        print(f"❌ 数据目录不存在: {data_dir_path}")
        return False
    
    print(f"\n📁 数据目录: {data_dir_path}")
    
    # 步骤3: 自动修复关系文件命名（- 转 _）
    relations_dir = data_dir_path / "relations"
    if relations_dir.exists():
        renamed_count = 0
        for rel_file in relations_dir.glob("*.json"):
            if '-' in rel_file.stem and rel_file.stem.count('_') < rel_file.stem.count('-'):
                new_name = rel_file.name.replace('-', '_')
                new_path = rel_file.parent / new_name
                if not new_path.exists():
                    rel_file.rename(new_path)
                    renamed_count += 1
        
        if renamed_count > 0:
            print(f"🔧 已自动修复 {renamed_count} 个关系文件命名")
    
    # 步骤4: 生成HTML图谱
    print(f"\n📊 正在生成HTML图谱...")
    try:
        generate_subject(subject_name)
    except Exception as e:
        print(f"❌ HTML生成失败: {e}")
        return False
    
    # 步骤5: 更新index.html
    print(f"\n🔄 正在更新导航页面...")
    try:
        update_index_main()
    except Exception as e:
        print(f"❌ 索引更新失败: {e}")
        return False
    
    print("\n" + "="*60)
    print(f"✅ {subject_name} 同步完成!")
    print("="*60)
    print(f"\n💡 接下来可以:")
    print(f"   1. 运行服务器: python3 manage.py serve")
    print(f"   2. 导入Neo4j: python3 manage.py import --subject {subject_name}")
    
    return True


def sync_all():
    """同步所有已配置的学科（一步到位）"""
    print("="*60)
    print("🔄 开始同步所有学科")
    print("="*60)
    
    success_count = 0
    fail_count = 0
    
    for subject_name in SUBJECT_CONFIG.keys():
        print(f"\n{'='*60}")
        if sync_subject(subject_name):
            success_count += 1
        else:
            fail_count += 1
    
    print("\n" + "="*60)
    print(f"📊 同步完成: ✅ 成功 {success_count} 个, ❌ 失败 {fail_count} 个")
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
  %(prog)s import --subject 高中数学    # 导入指定学科到Neo4j（本地）
  %(prog)s import --all                # 导入所有学科到Neo4j（本地）
  %(prog)s import --subject 高中数学 --target test  # 导入到测试环境
  %(prog)s import --all --target test  # 导入所有学科到测试环境
  %(prog)s import --subject 高中数学 --clear  # 清除旧数据后重新导入
        """
    )
    
    subparsers = parser.add_subparsers(dest='command', help='子命令')
    
    # 生成图谱命令
    generate_parser = subparsers.add_parser('generate', help='生成HTML图谱')
    generate_group = generate_parser.add_mutually_exclusive_group(required=True)
    generate_group.add_argument('--all', action='store_true', help='生成所有学科图谱')
    generate_group.add_argument('--subject', type=str, help='生成指定学科图谱')
    
    # 导入到Neo4j命令
    import_parser = subparsers.add_parser('import', help='导入数据到Neo4j')
    import_group = import_parser.add_mutually_exclusive_group(required=True)
    import_group.add_argument('--all', action='store_true', help='导入所有学科数据')
    import_group.add_argument('--subject', type=str, help='导入指定学科数据')
    import_parser.add_argument('--env', type=str, default='.env',
                              help='环境配置文件 (默认: .env)')
    import_parser.add_argument('--target', type=str, choices=['local', 'test'], default='local',
                              help='目标环境: local(本地) 或 test(测试服务器) (默认: local)')
    import_parser.add_argument('--clear', action='store_true',
                              help='导入前清除该学科的旧数据')
    
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
    
    # 启动Neo4j查询API服务命令
    api_parser = subparsers.add_parser('api', help='启动Neo4j查询API服务器')
    api_parser.add_argument('-p', '--port', type=int, default=8889,
                           help='端口号 (默认: 8889)')
    api_parser.add_argument('-H', '--host', type=str, default='0.0.0.0',
                           help='监听地址 (默认: 0.0.0.0)')
    api_parser.add_argument('--env', type=str, default='.env',
                           help='环境配置文件 (默认: .env)')
    
    # 同步命令（一步到位更新）
    sync_parser = subparsers.add_parser('sync', help='同步学科数据（生成HTML + 更新索引）')
    sync_group = sync_parser.add_mutually_exclusive_group(required=True)
    sync_group.add_argument('--all', action='store_true', help='同步所有学科')
    sync_group.add_argument('--subject', type=str, help='同步指定学科')
    
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
    
    elif args.command == 'import':
        if args.all:
            import_all_to_neo4j(args.env, args.clear, args.target)
        elif args.subject:
            import_subject_to_neo4j(args.subject, args.env, args.clear, args.target)
    
    elif args.command == 'list':
        list_subjects()
    
    elif args.command == 'update-index':
        update_index_main()
    
    elif args.command == 'serve':
        start_server(port=args.port, host=args.host)
    
    elif args.command == 'sync':
        if args.all:
            sync_all()
        elif args.subject:
            sync_subject(args.subject)
    
    elif args.command == 'api':
        try:
            from neo4j_query_api import start_api_server
            start_api_server(port=args.port, host=args.host, env_file=args.env)
        except ImportError as e:
            print(f"❌ 无法启动API服务器: {e}")
            print("请确保已安装依赖: pip install neo4j python-dotenv")


if __name__ == "__main__":
    main()
