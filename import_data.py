#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
数据导入脚本
支持将 entities 和 relations 导入到配置的环境（.env, .env1, .env2, .env3, .env4）
"""

import os
import json
import sys
from pathlib import Path
from typing import List, Dict, Any, Optional
from dotenv import load_dotenv
from neo4j import GraphDatabase

class DataImporter:
    """数据导入器"""
    
    def __init__(self, env_file: str = '.env'):
        """
        初始化导入器
        Args:
            env_file: 环境配置文件路径，如 '.env',  等
        """
        self.env_file = env_file
        self.base_dir = Path(__file__).parent
        self.data_dir = self.base_dir / '高中数学'
        self.entities_dir = self.data_dir / 'entities'
        self.relations_dir = self.data_dir / 'relations'
        
        # 加载环境变量
        env_path = self.base_dir / env_file
        if env_path.exists():
            load_dotenv(env_path)
            print(f"✓ 已加载环境配置: {env_file}")
        else:
            print(f"⚠ 警告: 环境配置文件 {env_file} 不存在，使用系统环境变量")
        
        # 从环境变量读取配置
        self.db_type = os.getenv('DB_TYPE', 'neo4j')  # 数据库类型: neo4j, mysql, postgresql, mongodb
        self.db_host = os.getenv('DB_HOST', 'localhost')
        # Neo4j 默认 Bolt 端口 7687，HTTP 端口 7474；这里默认使用 Bolt
        self.db_port = os.getenv('DB_PORT', '7687')
        # 允许直接指定完整的 Neo4j 连接 URI（如 bolt://host:7687 或 neo4j://host:7687）
        self.neo4j_uri = os.getenv('NEO4J_URI')
        self.db_scheme = os.getenv('DB_SCHEME', 'bolt')
        self.db_user = os.getenv('DB_USER', 'neo4j')
        self.db_password = os.getenv('DB_PASSWORD', '')
        self.db_name = os.getenv('DB_NAME', 'neo4j')
        self.api_url = os.getenv('API_URL', '')  # 如果使用API导入
        self.api_token = os.getenv('API_TOKEN', '')
        
        print(f"数据库类型: {self.db_type}")
        target_uri = self.neo4j_uri or f"{self.db_scheme}://{self.db_host}:{self.db_port}"
        print(f"连接地址: {target_uri}")
        print(f"用户名: {self.db_user}")
        print(f"密码: {'*' * len(self.db_password) if self.db_password else '(未设置)'}")
    
    def load_entities(self) -> Dict[str, List[Dict[str, Any]]]:
        """
        加载所有实体文件
        
        Returns:
            字典，key为实体类型，value为实体列表
        """
        entities = {}
        
        if not self.entities_dir.exists():
            print(f"错误: 实体目录不存在: {self.entities_dir}")
            return entities
        
        entity_files = list(self.entities_dir.glob('*.json'))
        print(f"\n找到 {len(entity_files)} 个实体文件")
        
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
                    print(f"⚠ 警告: {entity_file.name} 格式不支持")
                    continue
                
                # 获取实体类型（从文件名或实体数据）
                entity_type = entity_list[0]['type'] if entity_list else Path(entity_file).stem
                entities[entity_type] = entity_list
                print(f"  ✓ {entity_file.name}: {len(entity_list)} 个 {entity_type} 实体")
                
            except Exception as e:
                print(f"  ✗ 读取 {entity_file.name} 失败: {e}")
        
        total = sum(len(v) for v in entities.values())
        print(f"\n总计加载 {total} 个实体")
        return entities
    
    def load_relations(self) -> List[Dict[str, Any]]:
        """
        加载所有关系文件
        
        Returns:
            关系列表
        """
        relations = []
        
        if not self.relations_dir.exists():
            print(f"错误: 关系目录不存在: {self.relations_dir}")
            return relations
        
        relation_files = list(self.relations_dir.glob('*.json'))
        print(f"\n找到 {len(relation_files)} 个关系文件")
        
        for relation_file in relation_files:
            try:
                with open(relation_file, 'r', encoding='utf-8') as f:
                    data = json.load(f)
                
                # 处理不同的JSON格式
                if isinstance(data, dict) and 'relationships' in data:
                    relation_list = data['relationships']
                elif isinstance(data, list):
                    relation_list = data
                else:
                    print(f"⚠ 警告: {relation_file.name} 格式不支持")
                    continue
                
                relations.extend(relation_list)
                print(f"  ✓ {relation_file.name}: {len(relation_list)} 个关系")
                
            except Exception as e:
                print(f"  ✗ 读取 {relation_file.name} 失败: {e}")
        
        print(f"\n总计加载 {len(relations)} 个关系")
        return relations
    
    def _ensure_database_exists(self, driver) -> bool:
        """
        确保数据库存在，如果不存在则创建
        
        Args:
            driver: Neo4j 驱动实例
            
        Returns:
            如果数据库存在或创建成功返回 True，否则返回 False
        """
        try:
            # 先尝试连接到目标数据库，检查是否存在
            with driver.session(database=self.db_name) as session:
                # 尝试执行一个简单查询来验证数据库是否存在
                session.run("RETURN 1")
                print(f"✓ 数据库 '{self.db_name}' 已存在")
                return True
        except Exception as e:
            error_msg = str(e)
            if "Database does not exist" in error_msg or "DatabaseNotFound" in error_msg:
                # 数据库不存在，尝试创建
                print(f"\n数据库 '{self.db_name}' 不存在，尝试创建...")
                try:
                    # 连接到系统数据库来创建新数据库
                    with driver.session(database="system") as system_session:
                        # 检查 Neo4j 版本，不同版本的创建命令可能不同
                        result = system_session.run("CALL dbms.components() YIELD name, versions RETURN name, versions[0] as version")
                        version_info = result.single()
                        neo4j_version = version_info['version'] if version_info else "5"
                        
                        # Neo4j 4.x+ 和 5.x 都支持 CREATE DATABASE
                        create_query = f"CREATE DATABASE `{self.db_name}` IF NOT EXISTS"
                        
                        try:
                            system_session.run(create_query)
                            print(f"✓ 成功创建数据库 '{self.db_name}'")
                            
                            # 等待数据库创建完成（Neo4j 5.x 需要）
                            import time
                            time.sleep(1)
                            
                            # 验证数据库是否创建成功
                            with driver.session(database=self.db_name) as test_session:
                                test_session.run("RETURN 1")
                            print(f"✓ 数据库 '{self.db_name}' 已就绪")
                            return True
                        except Exception as create_error:
                            # 如果 CREATE DATABASE 失败，尝试使用 CREATE OR REPLACE
                            try:
                                create_query_alt = f"CREATE OR REPLACE DATABASE `{self.db_name}`"
                                system_session.run(create_query_alt)
                                print(f"✓ 成功创建数据库 '{self.db_name}'")
                                return True
                            except Exception as create_error2:
                                print(f"✗ 创建数据库失败: {create_error2}")
                                print(f"     CREATE DATABASE `{self.db_name}` IF NOT EXISTS")
                                return False
                except Exception as system_error:
                    print(f"✗ 无法连接到系统数据库: {system_error}")
           
                    return False
            else:
                # 其他错误
                print(f"✗ 检查数据库时出错: {e}")
                return False
    
    def import_to_neo4j(self, entities: Dict[str, List[Dict]], relations: List[Dict]):
        """导入到 Neo4j"""
        uri = self.neo4j_uri or f"{self.db_scheme}://{self.db_host}:{self.db_port}"
        try:
            driver = GraphDatabase.driver(uri, auth=(self.db_user, self.db_password))
            driver.verify_connectivity()
            print(f"✓ 成功连接到 Neo4j: {uri}")
        except Exception as e:
            print(f"✗ 连接失败: {e}")
            return False
        
        # 检查并创建数据库（如果需要）
        if not self._ensure_database_exists(driver):
            driver.close()
            return False
        
        try:
            # 使用指定的数据库
            with driver.session(database=self.db_name) as session:
                # 导入实体
                print("\n开始导入实体...")
                for entity_type, entity_list in entities.items():
                    for entity in entity_list:
                        query = f"""
                        MERGE (e:{entity_type} {{identifier: $identifier}})
                        SET e += $properties
                        """
                        properties = {k: v for k, v in entity.items() if k != 'identifier'}
                        session.run(query, identifier=entity['identifier'], properties=properties)
                    print(f"  ✓ 已导入 {len(entity_list)} 个 {entity_type} 实体")
                
                # 导入关系
                print("\n开始导入关系...")
                for relation in relations:
                    query = """
                    MATCH (source {identifier: $source})
                    MATCH (target {identifier: $target})
                    MERGE (source)-[r:%s {label: $label}]->(target)
                    SET r.relationName = $relationName
                    """ % relation.get('relationName', 'RELATED').replace(' ', '_')
                    
                    session.run(
                        query,
                        source=relation['source'],
                        target=relation['target'],
                        label=relation.get('label', ''),
                        relationName=relation.get('relationName', '')
                    )
                print(f"  ✓ 已导入 {len(relations)} 个关系")
                
            print("\n✓ 导入完成！")
            return True
            
        except Exception as e:
            error_msg = str(e)
            print(f"✗ 导入失败: {error_msg}")
            return False
        finally:
            if 'driver' in locals():
                driver.close()

    def import_data(self):
        """执行导入"""
        print("数据导入工具")
        entities = self.load_entities()
        relations = self.load_relations()
        if not entities and not relations:
            print("\n错误: 没有找到可导入的数据")
            return False
        return self.import_to_neo4j(entities, relations)


def main():
    """主函数"""
    env_file = sys.argv[1] if len(sys.argv) > 1 else '.env'
    importer = DataImporter(env_file)
    success = importer.import_data()
    
    sys.exit(0 if success else 1)


if __name__ == '__main__':
    main()
