#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Neo4j查询API服务
支持按章节/节/主题等查询子图和最长路径
"""

import json
import traceback
from http.server import HTTPServer, BaseHTTPRequestHandler
from urllib.parse import urlparse, parse_qs
from pathlib import Path
import os
from dotenv import load_dotenv

try:
    from neo4j import GraphDatabase
    from neo4j.exceptions import ServiceUnavailable, SessionExpired
    NEO4J_AVAILABLE = True
except ImportError:
    NEO4J_AVAILABLE = False
    print("⚠️  警告: neo4j驱动未安装，请运行: pip install neo4j")

from config import SUBJECT_CONFIG, PROJECT_ROOT


class Neo4jQueryHandler:
    """Neo4j查询处理器 - 改进的连接管理"""
    
    def __init__(self, env_file='.env'):
        """初始化Neo4j连接"""
        if not NEO4J_AVAILABLE:
            raise ImportError("neo4j驱动未安装")
        
        # 加载环境变量
        env_path = PROJECT_ROOT / env_file
        if env_path.exists():
            load_dotenv(env_path)
        
        # 构建连接URI
        scheme = os.getenv('DB_SCHEME', 'bolt')
        host = os.getenv('DB_HOST', 'localhost')
        port = os.getenv('DB_PORT', '7687')
        self.uri = f"{scheme}://{host}:{port}"
        
        self.user = os.getenv('DB_USER', 'neo4j')
        self.password = os.getenv('DB_PASSWORD', 'password')
        self.database = os.getenv('DB_NAME', 'neo4j')
        
        print(f"📊 Neo4j配置:")
        print(f"   URI: {self.uri}")
        print(f"   Database: {self.database}")
        print(f"   User: {self.user}")
        
        # 创建驱动
        self.driver = None
        self._connect()
    
    def _connect(self):
        """建立连接"""
        try:
            if self.driver:
                self.driver.close()
            self.driver = GraphDatabase.driver(
                self.uri, 
                auth=(self.user, self.password),
                max_connection_lifetime=300,  # 5分钟
                connection_timeout=30
            )
            # 验证连接
            self.driver.verify_connectivity()
            print("✅ Neo4j连接成功")
        except Exception as e:
            print(f"❌ Neo4j连接失败: {e}")
            raise
    
    def _get_session(self):
        """获取session，自动重连"""
        try:
            return self.driver.session(database=self.database)
        except (ServiceUnavailable, SessionExpired):
            print("⚠️  连接断开，正在重连...")
            self._connect()
            return self.driver.session(database=self.database)
    
    def _run_query(self, query, params=None):
        """执行查询，带自动重试"""
        max_retries = 3
        last_error = None
        
        for attempt in range(max_retries):
            try:
                with self._get_session() as session:
                    result = session.run(query, params or {})
                    return list(result)  # 立即消费结果
            except (ServiceUnavailable, SessionExpired) as e:
                last_error = e
                print(f"⚠️  查询失败 (尝试 {attempt + 1}/{max_retries}): {e}")
                self._connect()
            except Exception as e:
                raise
        
        raise last_error
    
    def close(self):
        """关闭连接"""
        if self.driver:
            self.driver.close()
            self.driver = None
    
    def get_all_entry_nodes(self, subject_name):
        """
        获取指定学科的所有可作为入口的节点
        支持多种节点类型：Chapter, Section, Theme, Module等
        """
        if subject_name not in SUBJECT_CONFIG:
            return {"error": f"未找到学科: {subject_name}"}
        
        neo4j_label = SUBJECT_CONFIG[subject_name].get('neo4j_label')
        if not neo4j_label:
            return {"error": f"学科 {subject_name} 未配置Neo4j标签"}
        
        # 查询所有节点类型及其数量
        query = f"""
        MATCH (n:{neo4j_label})
        WITH labels(n) as lbls, n
        UNWIND lbls as label
        WITH label, count(n) as cnt
        WHERE label <> '{neo4j_label}'
        RETURN label, cnt
        ORDER BY cnt DESC
        """
        
        try:
            records = self._run_query(query)
            node_types = []
            for record in records:
                node_types.append({
                    "type": record["label"],
                    "count": record["cnt"]
                })
            return {"node_types": node_types, "subject": subject_name}
        except Exception as e:
            return {"error": f"查询失败: {str(e)}"}
    
    def get_nodes_by_type(self, subject_name, node_type):
        """获取指定学科指定类型的所有节点"""
        if subject_name not in SUBJECT_CONFIG:
            return {"error": f"未找到学科: {subject_name}"}
        
        neo4j_label = SUBJECT_CONFIG[subject_name].get('neo4j_label')
        if not neo4j_label:
            return {"error": f"学科 {subject_name} 未配置Neo4j标签"}
        
        # 查询指定类型的节点
        query = f"""
        MATCH (n:{node_type}:{neo4j_label})
        RETURN n.identifier as id, 
               coalesce(n.title, n.name, n.identifier) as title,
               labels(n) as labels
        ORDER BY title
        LIMIT 500
        """
        
        try:
            records = self._run_query(query)
            nodes = []
            for record in records:
                nodes.append({
                    "id": record["id"],
                    "title": record["title"] or "未命名",
                    "labels": [l for l in record["labels"] if l != neo4j_label]
                })
            return {"nodes": nodes, "count": len(nodes), "type": node_type}
        except Exception as e:
            return {"error": f"查询失败: {str(e)}"}
    
    def get_chapters_by_subject(self, subject_name):
        """获取指定学科的所有章节（兼容旧接口）"""
        if subject_name not in SUBJECT_CONFIG:
            return {"error": f"未找到学科: {subject_name}"}
        
        neo4j_label = SUBJECT_CONFIG[subject_name].get('neo4j_label')
        if not neo4j_label:
            return {"error": f"学科 {subject_name} 未配置Neo4j标签"}
        
        # 尝试多种可能的章节节点类型
        chapter_types = ['Chapter', 'Chapters', 'Unit', 'Module', 'Theme', 'CourseModule', 'LearningTheme']
        
        chapters = []
        found_type = None
        
        for chapter_type in chapter_types:
            query = f"""
            MATCH (c:{chapter_type}:{neo4j_label})
            RETURN c.identifier as id, 
                   coalesce(c.title, c.name, c.identifier) as title
            ORDER BY c.title
            LIMIT 200
            """
            
            try:
                records = self._run_query(query)
                if records:
                    for record in records:
                        chapters.append({
                            "id": record["id"],
                            "title": record["title"] or "未命名"
                        })
                    found_type = chapter_type
                    break
            except Exception as e:
                continue
        
        if not chapters:
            # 如果没找到章节，返回所有节点类型供选择
            return {
                "chapters": [],
                "count": 0,
                "message": f"该学科没有找到章节数据，请先导入数据: python3 manage.py import --subject {subject_name}"
            }
        
        return {
            "chapters": chapters, 
            "count": len(chapters),
            "node_type": found_type
        }
    
    def query_node_subgraph(self, subject_name, node_id, max_depth=3):
        """
        查询节点相关的子图 - 简化版本
        从指定节点出发，查找所有相连的节点和关系
        """
        if subject_name not in SUBJECT_CONFIG:
            return {"error": f"未找到学科: {subject_name}"}
        
        neo4j_label = SUBJECT_CONFIG[subject_name].get('neo4j_label')
        if not neo4j_label:
            return {"error": f"学科 {subject_name} 未配置Neo4j标签"}
        
        # 简化的子图查询 - 不限制关系方向
        query = f"""
        MATCH (start:{neo4j_label} {{identifier: $node_id}})
        CALL {{
            WITH start
            MATCH path = (start)-[*1..{max_depth}]-(connected:{neo4j_label})
            RETURN path
            LIMIT 200
        }}
        WITH collect(path) as paths, start
        WITH start, 
             reduce(nodes = [start], p in paths | nodes + nodes(p)) as allNodes,
             reduce(rels = [], p in paths | rels + relationships(p)) as allRels
        UNWIND allNodes as n
        WITH start, collect(DISTINCT n) as uniqueNodes, allRels
        UNWIND allRels as r
        WITH uniqueNodes, collect(DISTINCT r) as uniqueRels
        RETURN uniqueNodes as nodes, uniqueRels as relationships
        """
        
        # 更简单的备选查询
        simple_query = f"""
        MATCH (start:{neo4j_label} {{identifier: $node_id}})
        OPTIONAL MATCH (start)-[r1]-(n1:{neo4j_label})
        OPTIONAL MATCH (n1)-[r2]-(n2:{neo4j_label})
        OPTIONAL MATCH (n2)-[r3]-(n3:{neo4j_label})
        WITH start, 
             collect(DISTINCT n1) + collect(DISTINCT n2) + collect(DISTINCT n3) as connectedNodes,
             collect(DISTINCT r1) + collect(DISTINCT r2) + collect(DISTINCT r3) as allRels
        WITH [start] + [n IN connectedNodes WHERE n IS NOT NULL] as allNodes, 
             [r IN allRels WHERE r IS NOT NULL] as allRels
        RETURN allNodes as nodes, allRels as relationships
        """
        
        try:
            # 先尝试简单查询
            records = self._run_query(simple_query, {"node_id": node_id})
            
            if not records:
                return {"error": "未找到指定节点", "node_id": node_id}
            
            record = records[0]
            raw_nodes = record["nodes"]
            raw_rels = record["relationships"]
            
            # 处理节点
            nodes = []
            node_ids = set()
            for node in raw_nodes:
                if node is None:
                    continue
                node_id_str = node.element_id
                if node_id_str in node_ids:
                    continue
                node_ids.add(node_id_str)
                
                node_data = dict(node)
                node_data["id"] = node_id_str
                node_data["labels"] = [l for l in node.labels if l != neo4j_label]
                nodes.append(node_data)
            
            # 处理关系
            relationships = []
            rel_ids = set()
            for rel in raw_rels:
                if rel is None:
                    continue
                rel_id = rel.element_id
                if rel_id in rel_ids:
                    continue
                rel_ids.add(rel_id)
                
                # 只保留两端节点都在nodes中的关系
                start_id = rel.start_node.element_id
                end_id = rel.end_node.element_id
                if start_id in node_ids and end_id in node_ids:
                    relationships.append({
                        "id": rel_id,
                        "type": rel.type,
                        "start": start_id,
                        "end": end_id,
                        "properties": dict(rel) if rel else {}
                    })
            
            return {
                "nodes": nodes,
                "relationships": relationships,
                "node_count": len(nodes),
                "relationship_count": len(relationships)
            }
            
        except Exception as e:
            traceback.print_exc()
            return {"error": f"查询失败: {str(e)}"}
    
    def query_chapter_subgraph(self, subject_name, chapter_id):
        """查询章节子图（兼容旧接口）"""
        return self.query_node_subgraph(subject_name, chapter_id)
    
    def query_longest_path(self, subject_name, node_id, max_depth=6):
        """查询从节点出发的最长路径"""
        if subject_name not in SUBJECT_CONFIG:
            return {"error": f"未找到学科: {subject_name}"}
        
        neo4j_label = SUBJECT_CONFIG[subject_name].get('neo4j_label')
        if not neo4j_label:
            return {"error": f"学科 {subject_name} 未配置Neo4j标签"}
        
        query = f"""
        MATCH (start:{neo4j_label} {{identifier: $node_id}})
        MATCH path = (start)-[*1..{max_depth}]-(end:{neo4j_label})
        WITH path, length(path) as pathLength
        ORDER BY pathLength DESC
        LIMIT 10
        RETURN 
            [n in nodes(path) | {{
                id: n.identifier,
                title: coalesce(n.title, n.name, n.identifier),
                type: [l in labels(n) WHERE l <> '{neo4j_label}'][0]
            }}] as nodes,
            [r in relationships(path) | {{
                type: type(r),
                label: coalesce(r.relationName, r.label, type(r))
            }}] as relationships,
            pathLength as length
        """
        
        try:
            records = self._run_query(query, {"node_id": node_id})
            
            paths = []
            for record in records:
                paths.append({
                    "nodes": record["nodes"],
                    "relationships": record["relationships"],
                    "length": record["length"]
                })
            
            return {
                "paths": paths,
                "count": len(paths),
                "longest_length": paths[0]["length"] if paths else 0
            }
        
        except Exception as e:
            return {"error": f"查询失败: {str(e)}"}
    
    def get_database_stats(self, subject_name=None):
        """获取数据库统计信息"""
        try:
            if subject_name:
                if subject_name not in SUBJECT_CONFIG:
                    return {"error": f"未找到学科: {subject_name}"}
                neo4j_label = SUBJECT_CONFIG[subject_name].get('neo4j_label')
                
                query = f"""
                MATCH (n:{neo4j_label})
                WITH count(n) as nodeCount
                MATCH (:{neo4j_label})-[r]-(:{neo4j_label})
                RETURN nodeCount, count(DISTINCT r) as relCount
                """
            else:
                query = """
                MATCH (n)
                WITH count(n) as nodeCount
                MATCH ()-[r]-()
                RETURN nodeCount, count(DISTINCT r) as relCount
                """
            
            records = self._run_query(query)
            if records:
                record = records[0]
                return {
                    "node_count": record["nodeCount"],
                    "relationship_count": record["relCount"],
                    "subject": subject_name
                }
            return {"node_count": 0, "relationship_count": 0}
        except Exception as e:
            return {"error": f"查询失败: {str(e)}"}


class APIRequestHandler(BaseHTTPRequestHandler):
    """HTTP请求处理器"""
    
    query_handler = None
    
    def _send_cors_headers(self):
        """发送CORS头"""
        self.send_header('Access-Control-Allow-Origin', '*')
        self.send_header('Access-Control-Allow-Methods', 'GET, POST, OPTIONS')
        self.send_header('Access-Control-Allow-Headers', 'Content-Type')
    
    def _send_json_response(self, data, status=200):
        """发送JSON响应"""
        self.send_response(status)
        self.send_header('Content-type', 'application/json; charset=utf-8')
        self._send_cors_headers()
        self.end_headers()
        self.wfile.write(json.dumps(data, ensure_ascii=False, default=str).encode('utf-8'))
    
    def do_OPTIONS(self):
        """处理OPTIONS请求（CORS预检）"""
        self.send_response(200)
        self._send_cors_headers()
        self.end_headers()
    
    def do_GET(self):
        """处理GET请求"""
        parsed_path = urlparse(self.path)
        params = parse_qs(parsed_path.query)
        
        def get_param(name, default=None):
            return params.get(name, [default])[0]
        
        try:
            # 获取所有学科列表
            if parsed_path.path == '/api/subjects':
                subjects = []
                for name, config in SUBJECT_CONFIG.items():
                    subjects.append({
                        "name": name,
                        "display_name": config.get("display_name", name),
                        "icon": config.get("icon", "📚"),
                        "neo4j_label": config.get("neo4j_label", ""),
                        "color": config.get("color", "#3498db")
                    })
                self._send_json_response({"subjects": subjects})
            
            # 获取指定学科的节点类型
            elif parsed_path.path == '/api/node_types':
                subject = get_param('subject')
                if not subject:
                    self._send_json_response({"error": "缺少subject参数"}, 400)
                    return
                result = self.query_handler.get_all_entry_nodes(subject)
                self._send_json_response(result)
            
            # 获取指定类型的节点
            elif parsed_path.path == '/api/nodes':
                subject = get_param('subject')
                node_type = get_param('type')
                if not subject or not node_type:
                    self._send_json_response({"error": "缺少参数"}, 400)
                    return
                result = self.query_handler.get_nodes_by_type(subject, node_type)
                self._send_json_response(result)
            
            # 获取章节列表（兼容旧接口）
            elif parsed_path.path == '/api/chapters':
                subject = get_param('subject')
                if not subject:
                    self._send_json_response({"error": "缺少subject参数"}, 400)
                    return
                result = self.query_handler.get_chapters_by_subject(subject)
                self._send_json_response(result)
            
            # 查询子图
            elif parsed_path.path == '/api/query/subgraph':
                subject = get_param('subject')
                node_id = get_param('chapter_id') or get_param('node_id')
                max_depth = int(get_param('depth', 3))
                
                if not subject or not node_id:
                    self._send_json_response({"error": "缺少必需参数"}, 400)
                    return
                
                result = self.query_handler.query_node_subgraph(subject, node_id, max_depth)
                self._send_json_response(result)
            
            # 查询最长路径
            elif parsed_path.path == '/api/query/longest_path':
                subject = get_param('subject')
                node_id = get_param('chapter_id') or get_param('node_id')
                
                if not subject or not node_id:
                    self._send_json_response({"error": "缺少必需参数"}, 400)
                    return
                
                result = self.query_handler.query_longest_path(subject, node_id)
                self._send_json_response(result)
            
            # 数据库统计
            elif parsed_path.path == '/api/stats':
                subject = get_param('subject')
                result = self.query_handler.get_database_stats(subject)
                self._send_json_response(result)
            
            # 健康检查
            elif parsed_path.path == '/api/health':
                try:
                    stats = self.query_handler.get_database_stats()
                    self._send_json_response({
                        "status": "ok",
                        "database": self.query_handler.database,
                        "stats": stats
                    })
                except Exception as e:
                    self._send_json_response({
                        "status": "error",
                        "error": str(e)
                    }, 500)
            
            else:
                self._send_json_response({
                    "error": "未找到接口",
                    "available_endpoints": [
                        "/api/subjects",
                        "/api/node_types?subject=学科名",
                        "/api/nodes?subject=学科名&type=节点类型",
                        "/api/chapters?subject=学科名",
                        "/api/query/subgraph?subject=学科名&node_id=节点ID",
                        "/api/query/longest_path?subject=学科名&node_id=节点ID",
                        "/api/stats?subject=学科名",
                        "/api/health"
                    ]
                }, 404)
        
        except Exception as e:
            traceback.print_exc()
            self._send_json_response({"error": str(e)}, 500)
    
    def log_message(self, format, *args):
        """自定义日志格式"""
        print(f"[API] {self.address_string()} - {format % args}")


def start_api_server(port=8889, host='0.0.0.0', env_file='.env'):
    """启动API服务器"""
    if not NEO4J_AVAILABLE:
        print("❌ 无法启动API服务器：neo4j驱动未安装")
        print("   请运行: pip install neo4j python-dotenv")
        return
    
    try:
        # 初始化查询处理器
        query_handler = Neo4jQueryHandler(env_file)
        APIRequestHandler.query_handler = query_handler
        
        # 启动服务器
        server = HTTPServer((host, port), APIRequestHandler)
        print(f"\n🚀 Neo4j查询API服务器已启动")
        print(f"   地址: http://{host}:{port}")
        print(f"\n📚 可用接口:")
        print(f"   GET /api/subjects            - 获取学科列表")
        print(f"   GET /api/node_types          - 获取节点类型")
        print(f"   GET /api/nodes               - 获取指定类型节点")
        print(f"   GET /api/chapters            - 获取章节列表")
        print(f"   GET /api/query/subgraph      - 查询子图")
        print(f"   GET /api/query/longest_path  - 查询最长路径")
        print(f"   GET /api/stats               - 数据库统计")
        print(f"   GET /api/health              - 健康检查")
        print(f"\n按 Ctrl+C 停止服务器\n")
        
        try:
            server.serve_forever()
        except KeyboardInterrupt:
            print("\n\n正在关闭服务器...")
            server.shutdown()
            query_handler.close()
            print("✅ 服务器已关闭")
    
    except Exception as e:
        print(f"❌ 启动服务器失败: {e}")
        traceback.print_exc()


if __name__ == "__main__":
    start_api_server()
