#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
数学数据迁移脚本
从本地 graphV0 数据库导出所有数学相关的节点和边，并导入到远程测试环境
"""

import os
import json
import sys
from pathlib import Path
from typing import List, Dict, Any, Optional
from dotenv import load_dotenv

try:
    from neo4j import GraphDatabase
    from neo4j.exceptions import ServiceUnavailable, SessionExpired
except ImportError:
    print("❌ 错误: 请先安装 neo4j 驱动: pip install neo4j")
    sys.exit(1)

# 添加项目根目录到路径
PROJECT_ROOT = Path(__file__).parent.parent
sys.path.insert(0, str(PROJECT_ROOT))

from src.config import SUBJECT_CONFIG, PROJECT_ROOT


class MathDataMigrator:
    """数学数据迁移器"""
    
    def __init__(self, env_file: str = '.env', target_db: str = None, local_only: bool = False):
        """
        初始化迁移器
        
        Args:
            env_file: 环境配置文件路径
            target_db: 目标数据库名称（用于本地测试模式）
            local_only: 是否仅使用本地数据库（用于测试）
        """
        self.local_only = local_only
        
        # 加载环境变量
        env_path = PROJECT_ROOT / env_file
        if env_path.exists():
            load_dotenv(env_path)
            print(f"✓ 已加载环境配置: {env_file}")
        else:
            print(f"⚠ 警告: 环境配置文件 {env_file} 不存在")
            sys.exit(1)
        
        # 本地环境配置
        self.local_scheme = os.getenv('DB_SCHEME', 'bolt')
        self.local_host = os.getenv('DB_HOST', 'localhost')
        self.local_port = os.getenv('DB_PORT', '7687')
        self.local_user = os.getenv('DB_USER', 'neo4j')
        self.local_password = os.getenv('DB_PASSWORD', '')
        self.local_database = os.getenv('DB_NAME', 'graphV0')
        self.local_uri = f"{self.local_scheme}://{self.local_host}:{self.local_port}"
        
        # 远程测试环境配置
        self.remote_uri = os.getenv('NEO4J_TEST_URI', 'neo4j://10.50.134.39:30218')
        self.remote_user = os.getenv('NEO4J_TEST_USER', 'neo4j')
        self.remote_password = os.getenv('NEO4J_TEST_PASSWORD', '')
        self.remote_database = os.getenv('NEO4J_TEST_DATABASE', 'neo4j')
        
        # 如果指定了目标数据库（本地测试模式）
        if target_db:
            if local_only:
                # 本地测试模式：源和目标都在本地
                self.target_database = target_db
                self.target_uri = self.local_uri
                self.target_user = self.local_user
                self.target_password = self.local_password
            else:
                # 仅更改远程目标数据库名
                self.target_database = target_db
                self.target_uri = self.remote_uri
                self.target_user = self.remote_user
                self.target_password = self.remote_password
        else:
            # 默认：导入到远程数据库
            self.target_database = self.remote_database
            self.target_uri = self.remote_uri
            self.target_user = self.remote_user
            self.target_password = self.remote_password
        
        # 数学相关的标签
        self.math_labels = ['GaoZhongShuXue', 'YiJiaoShuXue']
        
        print(f"\n📊 迁移配置:")
        print(f"   源数据库: {self.local_uri} (数据库: {self.local_database})")
        if local_only:
            print(f"   目标数据库: {self.target_uri} (数据库: {self.target_database}) [本地测试模式]")
        else:
            print(f"   目标数据库: {self.target_uri} (数据库: {self.target_database})")
        print(f"   数学标签: {', '.join(self.math_labels)}")
    
    def _get_local_driver(self):
        """获取本地数据库驱动"""
        try:
            driver = GraphDatabase.driver(
                self.local_uri,
                auth=(self.local_user, self.local_password),
                max_connection_lifetime=300,
                connection_timeout=30
            )
            driver.verify_connectivity()
            print(f"✅ 本地数据库连接成功")
            return driver
        except Exception as e:
            print(f"❌ 本地数据库连接失败: {e}")
            raise
    
    def _get_target_driver(self):
        """获取目标数据库驱动（可能是远程或本地测试库）"""
        # 如果 URI 是 neo4j:// 协议，尝试转换为 bolt://
        uri = self.target_uri
        if uri.startswith('neo4j://'):
            # 尝试使用 bolt 协议
            uri_bolt = uri.replace('neo4j://', 'bolt://')
            print(f"   尝试使用 bolt 协议连接: {uri_bolt}")
            try:
                driver = GraphDatabase.driver(
                    uri_bolt,
                    auth=(self.target_user, self.target_password),
                    max_connection_lifetime=300,
                    connection_timeout=30
                )
                driver.verify_connectivity()
                mode_label = "本地测试" if self.local_only else "远程"
                print(f"✅ 目标数据库连接成功 ({mode_label}, bolt 协议)")
                return driver
            except Exception as e1:
                print(f"   bolt 协议连接失败: {e1}")
                print(f"   尝试使用原始 neo4j 协议...")
        
        try:
            driver = GraphDatabase.driver(
                uri,
                auth=(self.target_user, self.target_password),
                max_connection_lifetime=300,
                connection_timeout=30
            )
            driver.verify_connectivity()
            mode_label = "本地测试" if self.local_only else "远程"
            print(f"✅ 目标数据库连接成功 ({mode_label})")
            return driver
        except Exception as e:
            print(f"❌ 目标数据库连接失败: {e}")
            print(f"   提示: 请检查网络连接和数据库配置")
            raise
    
    def export_math_nodes(self, driver) -> Dict[str, List[Dict]]:
        """导出所有数学相关的节点"""
        print(f"\n🔄 开始导出数学节点...")
        
        nodes_by_label = {}
        
        with driver.session(database=self.local_database) as session:
            for label in self.math_labels:
                print(f"   查询标签: {label}...")
                
                # 查询所有带有该标签的节点
                query = f"""
                MATCH (n:{label})
                RETURN n
                """
                
                result = session.run(query)
                nodes = []
                
                for record in result:
                    node = record['n']
                    # 将节点转换为字典
                    node_dict = dict(node)
                    node_dict['labels'] = list(node.labels)
                    nodes.append(node_dict)
                
                nodes_by_label[label] = nodes
                print(f"   ✓ {label}: {len(nodes)} 个节点")
        
        total_nodes = sum(len(nodes) for nodes in nodes_by_label.values())
        print(f"\n📊 总计导出 {total_nodes} 个节点")
        
        return nodes_by_label
    
    def export_math_relationships(self, driver) -> List[Dict]:
        """导出所有数学相关的关系"""
        print(f"\n🔄 开始导出数学关系...")
        
        all_relationships = []
        seen_rels = set()  # 用于去重
        
        with driver.session(database=self.local_database) as session:
            for label in self.math_labels:
                print(f"   查询标签: {label} 的关系...")
                
                # 查询所有以该标签节点为起点的关系（改进版：支持跨标签关系）
                query = f"""
                MATCH (a:{label})-[r]->(b)
                RETURN a, r, b, id(r) as rel_id
                """
                
                result = session.run(query)
                relationships = []
                
                for record in result:
                    rel_id = record['rel_id']
                    
                    # 去重：避免同一关系被多次导出
                    if rel_id in seen_rels:
                        continue
                    seen_rels.add(rel_id)
                    
                    start_node = record['a']
                    rel = record['r']
                    end_node = record['b']
                    
                    # 将节点转换为字典
                    start_dict = dict(start_node)
                    end_dict = dict(end_node)
                    rel_props = dict(rel)
                    
                    rel_dict = {
                        'type': rel.type,
                        'start': start_dict,
                        'end': end_dict,
                        'properties': rel_props,
                        'start_labels': list(start_node.labels),
                        'end_labels': list(end_node.labels)
                    }
                    # 确保 identifier 存在
                    rel_dict['source'] = start_dict.get('identifier')
                    rel_dict['target'] = end_dict.get('identifier')
                    rel_dict['relationName'] = rel_props.get('relationName', rel.type)
                    rel_dict['label'] = rel_props.get('label', rel.type)
                    
                    relationships.append(rel_dict)
                
                all_relationships.extend(relationships)
                print(f"   ✓ {label}: {len(relationships)} 个关系（去重后）")
        
        print(f"\n📊 总计导出 {len(all_relationships)} 个关系")
        
        return all_relationships
    
    def save_to_json(self, nodes_by_label: Dict[str, List[Dict]], 
                     relationships: List[Dict], output_dir: Path):
        """保存数据到 JSON 文件"""
        output_dir.mkdir(parents=True, exist_ok=True)
        
        # 保存节点（按标签分组）
        nodes_file = output_dir / 'math_nodes.json'
        with open(nodes_file, 'w', encoding='utf-8') as f:
            json.dump(nodes_by_label, f, ensure_ascii=False, indent=2)
        print(f"✓ 节点数据已保存: {nodes_file}")
        
        # 保存关系
        relations_file = output_dir / 'math_relationships.json'
        with open(relations_file, 'w', encoding='utf-8') as f:
            json.dump(relationships, f, ensure_ascii=False, indent=2)
        print(f"✓ 关系数据已保存: {relations_file}")
        
        return nodes_file, relations_file
    
    def import_nodes_to_target(self, driver, nodes_by_label: Dict[str, List[Dict]]):
        """导入节点到目标数据库"""
        mode_label = "本地测试库" if self.local_only else "目标数据库"
        print(f"\n🔄 开始导入节点到{mode_label} ({self.target_database})...")
        
        with driver.session(database=self.target_database) as session:
            total_imported = 0
            
            for label, nodes in nodes_by_label.items():
                print(f"   导入标签: {label} ({len(nodes)} 个节点)...")
                imported = 0
                
                for node in nodes:
                    # 获取节点的所有标签（包括实体类型标签和学科标签）
                    labels = node.get('labels', [label])
                    label_str = ':'.join(labels)
                    
                    # 构建属性字典
                    properties = {k: v for k, v in node.items() if k != 'labels'}
                    
                    # 确保 identifier 存在
                    identifier = properties.get('identifier')
                    if not identifier:
                        print(f"   ⚠ 警告: 节点缺少 identifier，跳过")
                        continue
                    
                    # 处理复杂属性（列表、字典转为 JSON 字符串）
                    processed_props = {}
                    for k, v in properties.items():
                        if isinstance(v, (list, dict)):
                            processed_props[k] = json.dumps(v, ensure_ascii=False)
                        else:
                            processed_props[k] = v
                    
                    # 导入节点（使用事务批量处理）
                    query = f"""
                    MERGE (n:{label_str} {{identifier: $identifier}})
                    SET n += $properties
                    """
                    
                    try:
                        session.run(query, identifier=identifier, properties=processed_props)
                        imported += 1
                        
                        # 每100个节点提交一次
                        if imported % 100 == 0:
                            print(f"     已导入 {imported} 个节点...")
                    except Exception as e:
                        print(f"   ⚠ 导入节点失败 ({identifier[:50]}...): {e}")
                
                total_imported += imported
                print(f"   ✓ {label}: {imported}/{len(nodes)} 个节点导入成功")
            
            print(f"\n📊 总计导入 {total_imported} 个节点")
            return total_imported
    
    def import_relationships_to_target(self, driver, relationships: List[Dict]):
        """导入关系到目标数据库"""
        mode_label = "本地测试库" if self.local_only else "目标数据库"
        print(f"\n🔄 开始导入关系到{mode_label} ({self.target_database})...")
        
        total_rels = len(relationships)
        
        with driver.session(database=self.target_database) as session:
            imported = 0
            failed = 0
            
            for i, rel in enumerate(relationships, 1):
                source_id = rel.get('source')
                target_id = rel.get('target')
                rel_type = rel.get('type', 'RELATED')
                rel_name = rel.get('relationName', rel_type)
                
                if not source_id or not target_id:
                    failed += 1
                    continue
                
                # 清理关系类型名称（确保是有效的标识符）
                rel_type_clean = ''.join(c if c.isalnum() or c == '_' else '_' for c in rel_type)
                
                # 获取属性
                properties = rel.get('properties', {})
                processed_props = {}
                for k, v in properties.items():
                    if isinstance(v, (list, dict)):
                        processed_props[k] = json.dumps(v, ensure_ascii=False)
                    else:
                        processed_props[k] = v
                
                # 尝试匹配节点（可能在不同的标签下）
                # 使用动态关系类型
                query = f"""
                MATCH (source)
                WHERE source.identifier = $source_id
                MATCH (target)
                WHERE target.identifier = $target_id
                MERGE (source)-[r:{rel_type_clean}]->(target)
                SET r += $properties
                SET r.relationName = $relationName
                SET r.label = $label
                """
                
                try:
                    session.run(
                        query,
                        source_id=source_id,
                        target_id=target_id,
                        properties=processed_props,
                        relationName=rel_name,
                        label=rel.get('label', rel_name)
                    )
                    # 只要不抛异常就认为成功（MERGE 语义保证幂等）
                    imported += 1
                    
                    # 每200条显示进度
                    if i % 200 == 0:
                        print(f"     已处理 {i}/{total_rels} 条关系 (成功: {imported}, 失败: {failed})...")
                except Exception as e:
                    failed += 1
                    if failed <= 10:  # 只打印前10个错误
                        print(f"   ⚠ 导入关系失败 ({source_id} -> {target_id}): {e}")
            
            print(f"\n📊 关系导入结果: {imported}/{total_rels} 个成功, {failed} 个失败")
            return imported
    
    def migrate(self, export_dir: Optional[Path] = None, skip_export: bool = False, export_only: bool = False):
        """执行完整迁移流程"""
        print("="*60)
        print("📦 数学数据迁移工具")
        print("="*60)
        
        local_driver = None
        target_driver = None
        
        try:
            # 连接数据库
            local_driver = self._get_local_driver()
            
            if not export_only:
                target_driver = self._get_target_driver()
            
            # 导出数据
            if not skip_export:
                nodes_by_label = self.export_math_nodes(local_driver)
                relationships = self.export_math_relationships(local_driver)
                
                # 保存到文件（可选）
                if export_dir:
                    self.save_to_json(nodes_by_label, relationships, export_dir)
            else:
                # 从文件加载
                if not export_dir:
                    export_dir = PROJECT_ROOT / 'exported_data'
                
                nodes_file = export_dir / 'math_nodes.json'
                relations_file = export_dir / 'math_relationships.json'
                
                if not nodes_file.exists() or not relations_file.exists():
                    print(f"❌ 错误: 导出文件不存在，请先执行导出")
                    return False
                
                print(f"📂 从文件加载数据...")
                with open(nodes_file, 'r', encoding='utf-8') as f:
                    nodes_by_label = json.load(f)
                with open(relations_file, 'r', encoding='utf-8') as f:
                    relationships = json.load(f)
                
                total_nodes = sum(len(nodes) for nodes in nodes_by_label.values())
                print(f"   ✓ 加载 {total_nodes} 个节点, {len(relationships)} 个关系")
            
            # 导入到目标数据库（如果不是仅导出模式）
            if not export_only:
                self.import_nodes_to_target(target_driver, nodes_by_label)
                self.import_relationships_to_target(target_driver, relationships)
                print("\n" + "="*60)
                mode_label = "本地测试迁移" if self.local_only else "迁移"
                print(f"✅ {mode_label}完成！")
                print("="*60)
            else:
                print("\n" + "="*60)
                print("✅ 导出完成！数据已保存到文件")
                print("="*60)
                if export_dir:
                    print(f"   节点文件: {export_dir / 'math_nodes.json'}")
                    print(f"   关系文件: {export_dir / 'math_relationships.json'}")
            
            return True
            
        except Exception as e:
            print(f"\n❌ 迁移失败: {e}")
            import traceback
            traceback.print_exc()
            return False
            
        finally:
            if local_driver:
                local_driver.close()
            if target_driver:
                target_driver.close()


def main():
    """主函数"""
    import argparse
    
    parser = argparse.ArgumentParser(description='数学数据迁移工具')
    parser.add_argument('--env', default='.env', help='环境配置文件路径')
    parser.add_argument('--export-dir', type=str, help='导出数据保存目录')
    parser.add_argument('--skip-export', action='store_true', help='跳过导出，从文件加载')
    parser.add_argument('--export-only', action='store_true', help='仅导出数据，不导入')
    parser.add_argument('--target-db', type=str, help='目标数据库名称（用于指定迁移目标）')
    parser.add_argument('--local-only', action='store_true', help='本地测试模式：源和目标都使用本地数据库')
    
    args = parser.parse_args()
    
    export_dir = Path(args.export_dir) if args.export_dir else PROJECT_ROOT / 'exported_data'
    
    migrator = MathDataMigrator(
        env_file=args.env,
        target_db=args.target_db,
        local_only=args.local_only
    )
    success = migrator.migrate(export_dir=export_dir, skip_export=args.skip_export, export_only=args.export_only)
    
    sys.exit(0 if success else 1)


if __name__ == '__main__':
    main()
