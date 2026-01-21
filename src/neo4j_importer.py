#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Neo4j 数据导入模块
支持将知识图谱数据导入到 Neo4j，并按学科打标签分类
"""

import os
import json
import time
from pathlib import Path
from typing import List, Dict, Any, Optional
from dotenv import load_dotenv

try:
    from neo4j import GraphDatabase
except ImportError:
    GraphDatabase = None

from config import PROJECT_ROOT, DATA_ROOT, SUBJECT_CONFIG


class Neo4jImporter:
    """Neo4j 数据导入器"""
    
    def __init__(self, subject_name: str, env_file: str = '.env'):
        """
        初始化导入器
        
        Args:
            subject_name: 学科名称，如 "高中数学"、"义教物理"
            env_file: 环境配置文件路径
        """
        if GraphDatabase is None:
            raise ImportError("请先安装 neo4j 驱动: pip install neo4j")
        
        # 验证学科配置
        if subject_name not in SUBJECT_CONFIG:
            available = ', '.join(SUBJECT_CONFIG.keys())
            raise ValueError(f"未知学科: {subject_name}\n可用学科: {available}")
        
        self.subject_name = subject_name
        self.subject_config = SUBJECT_CONFIG[subject_name]
        self.neo4j_label = self.subject_config.get("neo4j_label", subject_name.replace(" ", ""))
        
        # 设置数据目录
        data_dir = self.subject_config.get("data_dir")
        if not data_dir:
            raise ValueError(f"学科 {subject_name} 未配置数据目录")
        
        self.data_dir = DATA_ROOT / data_dir
        self.entities_dir = self.data_dir / "entities"
        
        # 自动检测关系目录（支持 relations 或 relation）
        if (self.data_dir / "relations").exists():
            self.relations_dir = self.data_dir / "relations"
        elif (self.data_dir / "relation").exists():
            self.relations_dir = self.data_dir / "relation"
        else:
            self.relations_dir = self.data_dir / "relations"  # 默认
        
        # 加载环境变量
        env_path = PROJECT_ROOT / env_file
        if env_path.exists():
            load_dotenv(env_path)
            print(f"✓ 已加载环境配置: {env_file}")
        else:
            print(f"⚠ 警告: 环境配置文件 {env_file} 不存在，使用系统环境变量")
        
        # 从环境变量读取 Neo4j 配置
        self.neo4j_uri = os.getenv('NEO4J_URI')
        self.db_scheme = os.getenv('DB_SCHEME', 'bolt')
        self.db_host = os.getenv('DB_HOST', 'localhost')
        self.db_port = os.getenv('DB_PORT', '7687')
        self.db_user = os.getenv('DB_USER', 'neo4j')
        self.db_password = os.getenv('DB_PASSWORD', '')
        self.db_name = os.getenv('DB_NAME', 'neo4j')
        
        # 打印配置信息
        target_uri = self.neo4j_uri or f"{self.db_scheme}://{self.db_host}:{self.db_port}"
        print(f"\n📊 导入配置:")
        print(f"   学科: {subject_name} ({self.subject_config['display_name']})")
        print(f"   Neo4j标签: {self.neo4j_label}")
        print(f"   数据目录: {self.data_dir}")
        print(f"   连接地址: {target_uri}")
        print(f"   数据库: {self.db_name}")
        print(f"   用户名: {self.db_user}")
    
    def load_entities(self) -> Dict[str, List[Dict[str, Any]]]:
        """
        加载所有实体文件
        
        Returns:
            字典，key为实体类型，value为实体列表
        """
        entities = {}
        
        if not self.entities_dir.exists():
            print(f"⚠ 警告: 实体目录不存在: {self.entities_dir}")
            return entities
        
        entity_files = list(self.entities_dir.glob('*.json'))
        print(f"\n📂 找到 {len(entity_files)} 个实体文件")
        
        for entity_file in entity_files:
            try:
                with open(entity_file, 'r', encoding='utf-8') as f:
                    data = json.load(f)
                
                # 处理不同的JSON格式
                if isinstance(data, dict) and 'entities' in data:
                    entity_list = data['entities']
                elif isinstance(data, list):
                    entity_list = data
                else:
                    print(f"  ⚠ 警告: {entity_file.name} 格式不支持")
                    continue
                
                if not entity_list:
                    continue
                
                # 获取实体类型（从实体数据或文件名）
                entity_type = entity_list[0].get('type', Path(entity_file).stem)
                entities[entity_type] = entity_list
                print(f"  ✓ {entity_file.name}: {len(entity_list)} 个 {entity_type}")
                
            except Exception as e:
                print(f"  ✗ 读取 {entity_file.name} 失败: {e}")
        
        total = sum(len(v) for v in entities.values())
        print(f"\n📊 总计加载 {total} 个实体")
        return entities
    
    def load_relations(self) -> List[Dict[str, Any]]:
        """
        加载所有关系文件
        
        支持的关系文件格式：
        1. {"relationships": [...]} - 标准格式
        2. {"relations": [...]} - 常见格式
        3. [...] - 直接数组格式
        
        关系对象格式：
        {
            "relationName": "关系类型名称",
            "label": "关系标签",
            "source": "源实体identifier",
            "target": "目标实体identifier",
            "properties": {}  # 可选
        }
        
        Returns:
            关系列表
        """
        relations = []
        
        if not self.relations_dir.exists():
            print(f"⚠ 警告: 关系目录不存在: {self.relations_dir}")
            return relations
        
        relation_files = list(self.relations_dir.glob('*.json'))
        print(f"\n📂 找到 {len(relation_files)} 个关系文件")
        
        for relation_file in relation_files:
            try:
                with open(relation_file, 'r', encoding='utf-8') as f:
                    data = json.load(f)
                
                # 处理不同的JSON格式
                # 支持多种格式：
                # 1. {"relationships": [...]} - 标准格式
                # 2. {"relations": [...]} - 常见格式
                # 3. [...] - 直接数组格式
                if isinstance(data, dict):
                    if 'relationships' in data:
                        relation_list = data['relationships']
                    elif 'relations' in data:
                        relation_list = data['relations']
                    else:
                        # 尝试查找其他可能的键
                        possible_keys = [k for k in data.keys() if isinstance(data[k], list)]
                        if possible_keys:
                            print(f"  ⚠ 警告: {relation_file.name} 使用非标准键 '{possible_keys[0]}'，尝试使用")
                            relation_list = data[possible_keys[0]]
                        else:
                            print(f"  ⚠ 警告: {relation_file.name} 格式不支持（字典中未找到关系数组）")
                            print(f"     可用键: {list(data.keys())}")
                            continue
                elif isinstance(data, list):
                    relation_list = data
                else:
                    print(f"  ⚠ 警告: {relation_file.name} 格式不支持（既不是字典也不是数组）")
                    print(f"     类型: {type(data)}")
                    continue
                
                relations.extend(relation_list)
                print(f"  ✓ {relation_file.name}: {len(relation_list)} 个关系")
                
            except Exception as e:
                print(f"  ✗ 读取 {relation_file.name} 失败: {e}")
        
        print(f"\n📊 总计加载 {len(relations)} 个关系")
        return relations
    
    def _get_uri(self) -> str:
        """获取 Neo4j 连接 URI"""
        return self.neo4j_uri or f"{self.db_scheme}://{self.db_host}:{self.db_port}"
    
    def _ensure_database_exists(self, driver) -> bool:
        """确保数据库存在，如果不存在则创建"""
        try:
            with driver.session(database=self.db_name) as session:
                session.run("RETURN 1")
                print(f"✓ 数据库 '{self.db_name}' 已存在")
                return True
        except Exception as e:
            error_msg = str(e)
            if "Database does not exist" in error_msg or "DatabaseNotFound" in error_msg:
                print(f"\n数据库 '{self.db_name}' 不存在，尝试创建...")
                try:
                    with driver.session(database="system") as system_session:
                        create_query = f"CREATE DATABASE `{self.db_name}` IF NOT EXISTS"
                        system_session.run(create_query)
                        print(f"✓ 成功创建数据库 '{self.db_name}'")
                        time.sleep(1)
                        
                        with driver.session(database=self.db_name) as test_session:
                            test_session.run("RETURN 1")
                        print(f"✓ 数据库 '{self.db_name}' 已就绪")
                        return True
                except Exception as create_error:
                    print(f"✗ 创建数据库失败: {create_error}")
                    return False
            else:
                print(f"✗ 检查数据库时出错: {e}")
                return False
    
    def import_to_neo4j(self, entities: Dict[str, List[Dict]], relations: List[Dict]) -> bool:
        """
        导入数据到 Neo4j
        
        实体会被打上两个标签：
        1. 实体类型标签（如 :KeyPoint, :Theme）
        2. 学科分类标签（如 :GaoZhongShuXue, :YiJiaoWuLi）
        """
        uri = self._get_uri()
        
        try:
            driver = GraphDatabase.driver(uri, auth=(self.db_user, self.db_password))
            driver.verify_connectivity()
            print(f"\n✓ 成功连接到 Neo4j: {uri}")
        except Exception as e:
            print(f"✗ 连接失败: {e}")
            return False
        
        if not self._ensure_database_exists(driver):
            driver.close()
            return False
        
        try:
            with driver.session(database=self.db_name) as session:
                # 导入实体（带学科标签）
                print(f"\n🔄 开始导入实体（标签: {self.neo4j_label}）...")
                entity_count = 0
                
                for entity_type, entity_list in entities.items():
                    for entity in entity_list:
                        # 使用双标签：实体类型 + 学科分类
                        # 例如: (:KeyPoint:GaoZhongShuXue {identifier: ...})
                        query = f"""
                        MERGE (e:{entity_type}:{self.neo4j_label} {{identifier: $identifier}})
                        SET e += $properties
                        SET e.subject = $subject
                        SET e.subjectLabel = $subjectLabel
                        """
                        
                        # 处理属性（排除 identifier，处理 contentJson）
                        properties = {}
                        for k, v in entity.items():
                            if k == 'identifier':
                                continue
                            if k == 'contentJson' and isinstance(v, dict):
                                # 扁平化 contentJson
                                for ck, cv in v.items():
                                    if isinstance(cv, (list, dict)):
                                        properties[f"CJ_{ck}"] = json.dumps(cv, ensure_ascii=False)
                                    else:
                                        properties[f"CJ_{ck}"] = cv
                            elif isinstance(v, (list, dict)):
                                properties[k] = json.dumps(v, ensure_ascii=False)
                            else:
                                properties[k] = v
                        
                        session.run(
                            query,
                            identifier=entity['identifier'],
                            properties=properties,
                            subject=self.subject_name,
                            subjectLabel=self.neo4j_label
                        )
                        entity_count += 1
                    
                    print(f"  ✓ 已导入 {len(entity_list)} 个 {entity_type}")
                
                # 导入关系
                print(f"\n🔄 开始导入关系...")
                relation_count = 0
                failed_relations = 0
                
                for relation in relations:
                    relation_type = relation.get('relationName', 'RELATED').replace(' ', '_').replace('-', '_')
                    # 确保关系类型是有效的标识符
                    relation_type = ''.join(c if c.isalnum() or c == '_' else '_' for c in relation_type)
                    
                    query = f"""
                    MATCH (source:{self.neo4j_label} {{identifier: $source}})
                    MATCH (target:{self.neo4j_label} {{identifier: $target}})
                    MERGE (source)-[r:{relation_type}]->(target)
                    SET r.label = $label
                    SET r.relationName = $relationName
                    """
                    
                    try:
                        result = session.run(
                            query,
                            source=relation['source'],
                            target=relation['target'],
                            label=relation.get('label', ''),
                            relationName=relation.get('relationName', '')
                        )
                        # 检查是否成功创建关系
                        summary = result.consume()
                        if summary.counters.relationships_created > 0:
                            relation_count += 1
                        else:
                            # 关系已存在或节点不存在
                            pass
                    except Exception as re:
                        failed_relations += 1
                        if failed_relations <= 3:  # 只打印前几个错误
                            print(f"  ⚠ 关系创建失败: {re}")
                
                print(f"  ✓ 已导入 {relation_count} 个关系")
                if failed_relations > 0:
                    print(f"  ⚠ {failed_relations} 个关系创建失败（可能是节点不存在）")
                
                # 创建索引以提高查询性能
                print(f"\n🔧 创建索引...")
                try:
                    # 为学科标签创建 identifier 索引
                    session.run(f"CREATE INDEX IF NOT EXISTS FOR (n:{self.neo4j_label}) ON (n.identifier)")
                    print(f"  ✓ 已创建 {self.neo4j_label}.identifier 索引")
                except Exception as ie:
                    print(f"  ⚠ 创建索引时出错: {ie}")
            
            print(f"\n✅ 导入完成！")
            print(f"   实体: {entity_count} 个")
            print(f"   关系: {relation_count} 个")
            print(f"   学科标签: {self.neo4j_label}")
            return True
            
        except Exception as e:
            print(f"✗ 导入失败: {e}")
            return False
        finally:
            driver.close()
    
    def import_data(self) -> bool:
        """执行完整导入流程"""
        print("="*60)
        print(f"📥 Neo4j 数据导入工具")
        print(f"   学科: {self.subject_name}")
        print("="*60)
        
        entities = self.load_entities()
        relations = self.load_relations()
        
        if not entities and not relations:
            print("\n❌ 错误: 没有找到可导入的数据")
            return False
        
        return self.import_to_neo4j(entities, relations)
    
    def clear_subject_data(self, confirm: bool = False) -> bool:
        """
        清除该学科的所有数据
        
        Args:
            confirm: 是否确认删除
        """
        if not confirm:
            print("⚠ 警告: 此操作将删除该学科的所有数据！")
            print(f"   学科: {self.subject_name}")
            print(f"   标签: {self.neo4j_label}")
            response = input("确认删除? (yes/no): ")
            if response.lower() != 'yes':
                print("已取消")
                return False
        
        uri = self._get_uri()
        
        try:
            driver = GraphDatabase.driver(uri, auth=(self.db_user, self.db_password))
            driver.verify_connectivity()
            
            with driver.session(database=self.db_name) as session:
                # 删除该学科的所有节点和关系
                result = session.run(f"""
                    MATCH (n:{self.neo4j_label})
                    DETACH DELETE n
                    RETURN count(n) as deleted
                """)
                deleted = result.single()['deleted']
                print(f"✓ 已删除 {deleted} 个节点（学科: {self.subject_name}）")
            
            driver.close()
            return True
            
        except Exception as e:
            print(f"✗ 删除失败: {e}")
            return False


def import_subject(subject_name: str, env_file: str = '.env', clear_first: bool = False) -> bool:
    """
    导入指定学科的数据到 Neo4j
    
    Args:
        subject_name: 学科名称
        env_file: 环境配置文件
        clear_first: 是否先清除该学科的旧数据
    
    Returns:
        是否成功
    """
    try:
        importer = Neo4jImporter(subject_name, env_file)
        
        if clear_first:
            importer.clear_subject_data(confirm=True)
        
        return importer.import_data()
    except Exception as e:
        print(f"❌ 导入失败: {e}")
        return False


def import_all_subjects(env_file: str = '.env', clear_first: bool = False) -> Dict[str, bool]:
    """
    导入所有学科的数据到 Neo4j
    
    Args:
        env_file: 环境配置文件
        clear_first: 是否先清除旧数据
    
    Returns:
        各学科的导入结果
    """
    results = {}
    
    print("="*60)
    print("📥 批量导入所有学科数据到 Neo4j")
    print("="*60)
    
    for subject_name in SUBJECT_CONFIG.keys():
        print(f"\n{'='*60}")
        try:
            success = import_subject(subject_name, env_file, clear_first)
            results[subject_name] = success
        except Exception as e:
            print(f"❌ {subject_name} 导入失败: {e}")
            results[subject_name] = False
    
    # 打印汇总
    print("\n" + "="*60)
    print("📊 导入结果汇总:")
    print("="*60)
    for subject, success in results.items():
        status = "✅ 成功" if success else "❌ 失败"
        print(f"   {subject}: {status}")
    
    success_count = sum(1 for s in results.values() if s)
    print(f"\n   总计: {success_count}/{len(results)} 个学科导入成功")
    
    return results


# 保持向后兼容
DataImporter = Neo4jImporter


if __name__ == '__main__':
    import sys
    
    if len(sys.argv) < 2:
        print("用法: python neo4j_importer.py <学科名称> [环境配置文件]")
        print("示例: python neo4j_importer.py 高中数学")
        print("      python neo4j_importer.py 义教物理 .env.prod")
        print("\n可用学科:")
        for name in SUBJECT_CONFIG.keys():
            print(f"  - {name}")
        sys.exit(1)
    
    subject = sys.argv[1]
    env = sys.argv[2] if len(sys.argv) > 2 else '.env'
    
    success = import_subject(subject, env)
    sys.exit(0 if success else 1)
