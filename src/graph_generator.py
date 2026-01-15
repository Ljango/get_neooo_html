#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
统一图谱生成器
支持加载主图谱数据（课标）并挂载教材数据
"""

import json
import os
from pathlib import Path
from datetime import datetime
from typing import Dict, List, Optional, Set, Tuple

# 项目根目录
PROJECT_ROOT = Path(__file__).parent.parent
DATA_ROOT = PROJECT_ROOT / "图谱数据"
STATIC_ROOT = PROJECT_ROOT / "static"


class GraphGenerator:
    """统一图谱生成器"""
    
    # 实体类型配置（统一的平铺字典）
    ENTITY_TYPE_CONFIG = {
        # 高中数学
        "CourseModule": {"label": "课程模块", "color": "#e74c3c", "size": 24},
        "Theme": {"label": "主题", "color": "#e67e22", "size": 20},
        "Topic": {"label": "主题内容", "color": "#f39c12", "size": 18},
        "Domain": {"label": "领域", "color": "#9b59b6", "size": 18},
        "Unit": {"label": "单元", "color": "#3498db", "size": 16},
        "KeyPoint": {"label": "知识点", "color": "#2ecc71", "size": 14},
        "AcademicQuality": {"label": "学业质量", "color": "#1abc9c", "size": 14},
        "CoreLiteracy": {"label": "核心素养", "color": "#16a085", "size": 14},
        
        # 义务物理
        "ThemeL1": {"label": "一级主题", "color": "#e67e22", "size": 22},
        "ThemeL2": {"label": "二级主题", "color": "#f39c12", "size": 18},
        "ThemeL3": {"label": "三级主题", "color": "#f1c40f", "size": 16},
        "Experiments": {"label": "实验", "color": "#3498db", "size": 14},
        "ExampleProblem": {"label": "示例问题", "color": "#9b59b6", "size": 14},
        "ActivitySuggestion": {"label": "活动建议", "color": "#e74c3c", "size": 14},
        "CourseTarget": {"label": "课程目标", "color": "#16a085", "size": 16},
        
        # 高中物理
        "Example": {"label": "示例", "color": "#9b59b6", "size": 14},
        "Experiment": {"label": "实验", "color": "#3498db", "size": 14},
        
        # 义务教育化学
        "LearningTheme": {"label": "学习主题", "color": "#e67e22", "size": 20},
        "Conception": {"label": "概念", "color": "#3498db", "size": 16},
        "CoreKnowledge": {"label": "核心知识", "color": "#2ecc71", "size": 16},
        "Method": {"label": "方法", "color": "#f39c12", "size": 14},
        "Attitude": {"label": "态度", "color": "#1abc9c", "size": 14},
        "Interdisciplinary": {"label": "跨学科", "color": "#e74c3c", "size": 14},
        
        # 义教地理
        "LearningThemeL1": {"label": "一级学习主题", "color": "#e67e22", "size": 22},
        "LearningThemeL2": {"label": "二级学习主题", "color": "#f39c12", "size": 18},
        "LearningThemeL3": {"label": "三级学习主题", "color": "#f1c40f", "size": 16},
        
        # 高中化学
        "CourseMoudle": {"label": "课程模块", "color": "#e74c3c", "size": 24},
        "CourseSeries": {"label": "课程系列", "color": "#9b59b6", "size": 20},
        "CourseType": {"label": "课程类型", "color": "#8e44ad", "size": 22},
        
        # 教材相关
        "Chapter": {"label": "章", "color": "#ff7675", "size": 16},
        "Section": {"label": "节", "color": "#74b9ff", "size": 14},
        "SubSection": {"label": "小节", "color": "#a29bfe", "size": 12},
    }
    def __init__(self, subject_path: str):
        """
        初始化图谱生成器
        
        Args:
            subject_path: 学科数据路径，如 "高中数学"
        """
        self.subject_path = DATA_ROOT / subject_path
        self.entities_path = self.subject_path / "entities"
        self.relations_path = self.subject_path / "relations"
        
        # 数据存储
        self.entities: Dict[str, dict] = {}  # identifier -> entity
        self.relations: List[dict] = []
        self.entity_types: Set[str] = set()
        self.relation_types: Set[str] = set()
        
    def load_main_graph(self) -> 'GraphGenerator':
        """加载主图谱数据（课标数据）"""
        print(f"📚 加载主图谱数据: {self.subject_path}")
        
        # 加载实体
        if self.entities_path.exists():
            for entity_file in self.entities_path.glob("*.json"):
                self._load_entity_file(entity_file)
        
        # 加载关系
        if self.relations_path.exists():
            for relation_file in self.relations_path.glob("*.json"):
                self._load_relation_file(relation_file)
        
        print(f"   ✓ 加载 {len(self.entities)} 个实体, {len(self.relations)} 条关系")
        return self
    
    def mount_textbook(self, book_path: str) -> 'GraphGenerator':
        """
        挂载教材数据到主图谱
        
        Args:
            book_path: 教材数据路径，相对于 subject_path/books/
        """
        full_path = self.subject_path / "books" / book_path
        print(f"📖 挂载教材数据: {book_path}")
        
        entities_file = full_path / "entities.json"
        relations_file = full_path / "relations.json"
        
        if entities_file.exists():
            self._load_entity_file(entities_file)
        
        if relations_file.exists():
            self._load_relation_file(relations_file)
            
        print(f"   ✓ 当前共 {len(self.entities)} 个实体, {len(self.relations)} 条关系")
        return self
    
    def _load_entity_file(self, filepath: Path):
        """加载实体文件"""
        try:
            with open(filepath, 'r', encoding='utf-8') as f:
                data = json.load(f)
            
            # 支持两种格式: {"entities": [...]} 或 [...]
            entities = data.get("entities", data) if isinstance(data, dict) else data
            
            for entity in entities:
                if isinstance(entity, dict) and "identifier" in entity:
                    identifier = entity["identifier"]
                    entity_type = entity.get("type", "Unknown")
                    
                    # 展平 contentJson
                    if "contentJson" in entity and isinstance(entity["contentJson"], dict):
                        for key, value in entity["contentJson"].items():
                            entity[f"CJ_{key}"] = value
                    
                    self.entities[identifier] = entity
                    self.entity_types.add(entity_type)
                    
        except Exception as e:
            print(f"   ⚠ 加载实体文件失败 {filepath}: {e}")
    
    def _load_relation_file(self, filepath: Path):
        """加载关系文件"""
        try:
            with open(filepath, 'r', encoding='utf-8') as f:
                data = json.load(f)
            
            # 支持两种格式: {"relations": [...]} 或 [...]
            relations = data.get("relations", data) if isinstance(data, dict) else data
            
            for rel in relations:
                if isinstance(rel, dict):
                    source = rel.get("source", rel.get("sourceId"))
                    target = rel.get("target", rel.get("targetId"))
                    rel_name = rel.get("relationName", rel.get("relation", "related"))
                    
                    if source and target:
                        self.relations.append({
                            "source": source,
                            "target": target,
                            "relationName": rel_name,
                            "label": rel.get("label", rel_name)
                        })
                        self.relation_types.add(rel_name)
                        
        except Exception as e:
            print(f"   ⚠ 加载关系文件失败 {filepath}: {e}")
    
    def filter_by_keypoints(self, keypoint_ids: List[str]) -> 'GraphGenerator':
        """
        根据知识点ID过滤图谱，只保留相关数据
        
        Args:
            keypoint_ids: 知识点ID列表
        """
        # 找到所有相关实体
        related_ids = set(keypoint_ids)
        
        # 向上追溯到 Unit, Theme, CourseModule
        for _ in range(5):  # 最多追溯5层
            new_ids = set()
            for rel in self.relations:
                if rel["target"] in related_ids:
                    new_ids.add(rel["source"])
                if rel["source"] in related_ids:
                    new_ids.add(rel["target"])
            
            if not new_ids - related_ids:
                break
            related_ids.update(new_ids)
        
        # 过滤
        self.entities = {k: v for k, v in self.entities.items() if k in related_ids}
        self.relations = [r for r in self.relations 
                         if r["source"] in self.entities and r["target"] in self.entities]
        
        return self
    
    def build_graph_data(self) -> dict:
        """构建D3.js图谱数据"""
        nodes = []
        links = []
        node_ids = set()
        
        # 构建节点
        for identifier, entity in self.entities.items():
            entity_type = entity.get("type", "Unknown")
            config = self.ENTITY_TYPE_CONFIG.get(entity_type, {
                "label": entity_type, "color": "#95a5a6", "size": 12
            })
            
            nodes.append({
                "id": identifier,
                "title": entity.get("title", identifier.split(":")[-1]),
                "type": entity_type,
                "typeLabel": config["label"],
                "color": config["color"],
                "size": config["size"],
                "properties": {k: v for k, v in entity.items() 
                             if k not in ["identifier", "title", "type"]}
            })
            node_ids.add(identifier)
        
        # 构建边
        for rel in self.relations:
            source = rel["source"]
            target = rel["target"]
            
            if source in node_ids and target in node_ids:
                links.append({
                    "source": source,
                    "target": target,
                    "relationName": rel["relationName"],
                    "label": rel.get("label", rel["relationName"])
                })
        
        return {
            "nodes": nodes,
            "links": links,
            "entityTypes": list(self.entity_types),
            "relationTypes": list(self.relation_types)
        }
    
    def generate_html(self, output_path: str, title: str = "知识图谱", 
                     description: str = "") -> str:
        """
        生成HTML可视化文件
        
        Args:
            output_path: 输出文件路径（相对于static目录）
            title: 图谱标题
            description: 图谱描述
            
        Returns:
            生成的文件路径
        """
        graph_data = self.build_graph_data()
        
        output_file = STATIC_ROOT / output_path
        output_file.parent.mkdir(parents=True, exist_ok=True)
        
        html_content = self._render_html_template(
            title=title,
            description=description,
            graph_data=graph_data,
            generated_at=datetime.now().isoformat()
        )
        
        with open(output_file, 'w', encoding='utf-8') as f:
            f.write(html_content)
        
        print(f"✅ HTML已生成: {output_file}")
        return str(output_file)
    
    def generate_neo4j_cypher(self, output_path: str, title: str = "知识图谱") -> str:
        """
        生成Neo4j导入脚本
        
        Args:
            output_path: 输出文件路径
            title: 图谱标题
            
        Returns:
            生成的文件路径
        """
        output_file = Path(output_path)
        output_file.parent.mkdir(parents=True, exist_ok=True)
        
        lines = [
            f"// =====================================================",
            f"// {title} - Neo4j导入脚本",
            f"// 生成时间: {datetime.now().isoformat()}",
            f"// =====================================================",
            "",
            "// 创建约束和索引",
        ]
        
        # 为每种实体类型创建约束
        for entity_type in self.entity_types:
            lines.append(f"CREATE CONSTRAINT IF NOT EXISTS FOR (n:{entity_type}) REQUIRE n.identifier IS UNIQUE;")
        
        lines.extend(["", "// =====================================================", "// 导入实体", "// =====================================================", ""])
        
        # 生成实体导入语句
        for identifier, entity in self.entities.items():
            entity_type = entity.get("type", "Unknown")
            props = self._format_neo4j_props(entity)
            lines.append(f"MERGE (n:{entity_type} {{identifier: \"{identifier}\"}})")
            lines.append(f"SET n += {props};")
            lines.append("")
        
        lines.extend(["// =====================================================", "// 导入关系", "// =====================================================", ""])
        
        # 生成关系导入语句
        for rel in self.relations:
            source = rel["source"]
            target = rel["target"]
            rel_name = rel["relationName"]
            label = rel.get("label", rel_name)
            
            lines.append(f"MATCH (source {{identifier: \"{source}\"}})")
            lines.append(f"MATCH (target {{identifier: \"{target}\"}})")
            lines.append(f"MERGE (source)-[r:{rel_name}]->(target)")
            lines.append(f"SET r.label = \"{label}\";")
            lines.append("")
        
        with open(output_file, 'w', encoding='utf-8') as f:
            f.write('\n'.join(lines))
        
        print(f"✅ Neo4j脚本已生成: {output_file}")
        return str(output_file)
    
    def _format_neo4j_props(self, entity: dict) -> str:
        """格式化Neo4j属性"""
        props = {}
        for key, value in entity.items():
            if value is None:
                continue
            if isinstance(value, (list, dict)):
                props[key] = json.dumps(value, ensure_ascii=False)
            else:
                props[key] = value
        
        prop_strs = []
        for k, v in props.items():
            if isinstance(v, str):
                v = v.replace('\\', '\\\\').replace('"', '\\"').replace('\n', '\\n')
                prop_strs.append(f'{k}: "{v}"')
            elif isinstance(v, bool):
                prop_strs.append(f'{k}: {str(v).lower()}')
            elif isinstance(v, (int, float)):
                prop_strs.append(f'{k}: {v}')
        
        return '{' + ', '.join(prop_strs) + '}'
    
    def _render_html_template(self, title: str, description: str, 
                             graph_data: dict, generated_at: str) -> str:
        """渲染HTML模板"""
        
        # 生成实体类型配置
        entity_type_config_js = json.dumps(self.ENTITY_TYPE_CONFIG, ensure_ascii=False, indent=2)
        graph_data_js = json.dumps(graph_data, ensure_ascii=False)
        
        return f'''<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{title}</title>
    <script src="https://d3js.org/d3.v7.min.js"></script>
    <style>
        * {{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }}
        
        body {{
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif;
            background: linear-gradient(135deg, #0c0c1e 0%, #1a1a2e 50%, #16213e 100%);
            color: #e0e0e0;
            min-height: 100vh;
            overflow: hidden;
        }}
        
        .container {{
            display: flex;
            height: 100vh;
        }}
        
        /* 侧边栏 */
        .sidebar {{
            width: 320px;
            background: rgba(20, 20, 40, 0.95);
            border-right: 1px solid rgba(255, 255, 255, 0.1);
            padding: 20px;
            overflow-y: auto;
            flex-shrink: 0;
        }}
        
        .sidebar h1 {{
            font-size: 1.4rem;
            margin-bottom: 8px;
            color: #fff;
            display: flex;
            align-items: center;
            gap: 8px;
        }}
        
        .sidebar .description {{
            font-size: 0.85rem;
            color: #888;
            margin-bottom: 16px;
            line-height: 1.5;
        }}
        
        .stats {{
            font-size: 0.9rem;
            color: #6c757d;
            margin-bottom: 20px;
            padding: 12px;
            background: rgba(255, 255, 255, 0.05);
            border-radius: 8px;
        }}
        
        /* 控制面板 */
        .control-panel {{
            margin-bottom: 20px;
            padding: 16px;
            background: rgba(255, 255, 255, 0.03);
            border-radius: 10px;
            border: 1px solid rgba(255, 255, 255, 0.08);
        }}
        
        .control-panel h3 {{
            font-size: 0.95rem;
            margin-bottom: 12px;
            color: #fff;
            display: flex;
            align-items: center;
            gap: 6px;
        }}
        
        /* 搜索框 */
        .search-box {{
            width: 100%;
            padding: 10px 14px;
            border: 1px solid rgba(255, 255, 255, 0.2);
            border-radius: 8px;
            background: rgba(255, 255, 255, 0.05);
            color: #fff;
            font-size: 0.9rem;
            margin-bottom: 10px;
            transition: all 0.3s;
        }}
        
        .search-box:focus {{
            outline: none;
            border-color: #3498db;
            box-shadow: 0 0 0 3px rgba(52, 152, 219, 0.2);
        }}
        
        .search-options {{
            display: flex;
            align-items: center;
            gap: 12px;
            flex-wrap: wrap;
        }}
        
        .search-options label {{
            font-size: 0.85rem;
            color: #aaa;
            display: flex;
            align-items: center;
            gap: 4px;
            cursor: pointer;
        }}
        
        .btn {{
            padding: 6px 12px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            font-size: 0.8rem;
            transition: all 0.2s;
        }}
        
        .btn-clear {{
            background: rgba(231, 76, 60, 0.2);
            color: #e74c3c;
        }}
        
        .btn-clear:hover {{
            background: rgba(231, 76, 60, 0.3);
        }}
        
        /* 筛选器 */
        .filter-group {{
            display: flex;
            flex-wrap: wrap;
            gap: 8px;
            margin-bottom: 8px;
        }}
        
        .filter-btn {{
            padding: 4px 8px;
            border: none;
            border-radius: 4px;
            background: rgba(255, 255, 255, 0.1);
            color: #aaa;
            font-size: 0.75rem;
            cursor: pointer;
            transition: all 0.2s;
        }}
        
        .filter-btn:hover {{
            background: rgba(255, 255, 255, 0.2);
        }}
        
        .filter-item {{
            display: flex;
            align-items: center;
            gap: 6px;
            padding: 6px 10px;
            background: rgba(255, 255, 255, 0.05);
            border-radius: 6px;
            cursor: pointer;
            transition: all 0.2s;
            font-size: 0.85rem;
        }}
        
        .filter-item:hover {{
            background: rgba(255, 255, 255, 0.1);
        }}
        
        .filter-item input {{
            accent-color: #3498db;
        }}
        
        .filter-item .color-dot {{
            width: 12px;
            height: 12px;
            border-radius: 50%;
        }}
        
        /* 图例 */
        .legend {{
            display: flex;
            flex-wrap: wrap;
            gap: 8px;
            padding: 12px;
            background: rgba(255, 255, 255, 0.03);
            border-radius: 8px;
            margin-bottom: 20px;
        }}
        
        .legend-item {{
            display: flex;
            align-items: center;
            gap: 6px;
            font-size: 0.8rem;
            color: #aaa;
        }}
        
        .legend-dot {{
            width: 10px;
            height: 10px;
            border-radius: 50%;
        }}
        
        /* 主画布区域 */
        .main-content {{
            flex: 1;
            position: relative;
            overflow: hidden;
        }}
        
        #graph-container {{
            width: 100%;
            height: 100%;
        }}
        
        svg {{
            width: 100%;
            height: 100%;
        }}
        
        /* 节点样式 */
        .node {{
            cursor: pointer;
            transition: filter 0.2s;
        }}
        
        .node:hover {{
            filter: brightness(1.2);
        }}
        
        .node-label {{
            font-size: 11px;
            fill: #ccc;
            pointer-events: none;
            text-anchor: middle;
            dominant-baseline: middle;
        }}
        
        .node-label.highlighted {{
            fill: #fff;
            font-weight: bold;
        }}
        
        /* 边样式 */
        .link {{
            stroke-opacity: 0.4;
            transition: stroke-opacity 0.2s;
        }}
        
        .link:hover {{
            stroke-opacity: 0.8;
        }}
        
        .link-label {{
            font-size: 9px;
            fill: #666;
            pointer-events: none;
        }}
        
        /* 详情面板 */
        .detail-panel {{
            position: absolute;
            top: 20px;
            right: 20px;
            width: 320px;
            max-height: calc(100vh - 40px);
            background: rgba(20, 20, 40, 0.95);
            border: 1px solid rgba(255, 255, 255, 0.1);
            border-radius: 12px;
            padding: 20px;
            overflow-y: auto;
            display: none;
            backdrop-filter: blur(10px);
        }}
        
        .detail-panel.show {{
            display: block;
        }}
        
        .detail-panel .close-btn {{
            position: absolute;
            top: 12px;
            right: 12px;
            background: none;
            border: none;
            color: #888;
            font-size: 1.2rem;
            cursor: pointer;
            padding: 4px 8px;
            border-radius: 4px;
            transition: all 0.2s;
        }}
        
        .detail-panel .close-btn:hover {{
            background: rgba(255, 255, 255, 0.1);
            color: #fff;
        }}
        
        .detail-panel h3 {{
            font-size: 1.1rem;
            margin-bottom: 12px;
            padding-right: 30px;
            color: #fff;
        }}
        
        .detail-panel .type-badge {{
            display: inline-block;
            padding: 4px 10px;
            border-radius: 12px;
            font-size: 0.75rem;
            margin-bottom: 12px;
        }}
        
        .detail-panel .props {{
            margin-top: 12px;
        }}
        
        .detail-panel .prop-item {{
            margin-bottom: 10px;
            padding: 10px;
            background: rgba(255, 255, 255, 0.03);
            border-radius: 6px;
        }}
        
        .detail-panel .prop-key {{
            font-size: 0.75rem;
            color: #888;
            margin-bottom: 4px;
        }}
        
        .detail-panel .prop-value {{
            font-size: 0.85rem;
            color: #ddd;
            word-break: break-all;
            max-height: 120px;
            overflow-y: auto;
        }}
        
        /* 返回按钮 */
        .back-btn {{
            position: absolute;
            top: 20px;
            left: 340px;
            padding: 8px 16px;
            background: rgba(52, 152, 219, 0.2);
            border: 1px solid rgba(52, 152, 219, 0.3);
            border-radius: 8px;
            color: #3498db;
            text-decoration: none;
            font-size: 0.9rem;
            display: flex;
            align-items: center;
            gap: 6px;
            transition: all 0.2s;
            z-index: 100;
        }}
        
        .back-btn:hover {{
            background: rgba(52, 152, 219, 0.3);
        }}
    </style>
</head>
<body>
    <div class="container">
        <!-- 侧边栏 -->
        <aside class="sidebar">
            <h1>📚 {title}</h1>
            <p class="description">{description} | 可拖拽/缩放 | 点击查看详情</p>
            <div class="stats">
                实体: <span id="node-count">0</span> (可见 <span id="visible-nodes">0</span>) · 
                关系: <span id="link-count">0</span> (可见 <span id="visible-links">0</span>)
            </div>
            
            <!-- 图例 -->
            <div class="legend" id="legend"></div>
            
            <!-- 搜索 -->
            <div class="control-panel">
                <h3>🔍 节点搜索</h3>
                <input type="text" class="search-box" id="search-input" placeholder="按标题/ID搜索…（回车应用）">
                <div class="search-options">
                    <label>
                        <input type="checkbox" id="filter-only-match">
                        只显示匹配节点
                    </label>
                    <button class="btn btn-clear" id="clear-search">清空</button>
                </div>
            </div>
            
            <!-- 实体类型筛选 -->
            <div class="control-panel">
                <h3>🧩 实体类型筛选</h3>
                <div class="filter-group" style="margin-bottom: 12px;">
                    <button class="filter-btn" id="select-all-types">全选</button>
                    <button class="filter-btn" id="deselect-all-types">全不选</button>
                </div>
                <div id="entity-type-filters"></div>
            </div>
            
            <!-- 关系类型筛选 -->
            <div class="control-panel">
                <h3>🔗 关系类型筛选</h3>
                <div class="filter-group" style="margin-bottom: 12px;">
                    <button class="filter-btn" id="select-all-relations">全选</button>
                    <button class="filter-btn" id="deselect-all-relations">全不选</button>
                </div>
                <div id="relation-type-filters"></div>
            </div>
        </aside>
        
        <!-- 主画布 -->
        <main class="main-content">
            <a href="index.html" class="back-btn">← 返回图谱列表</a>
            <div id="graph-container"></div>
            
            <!-- 详情面板 -->
            <div class="detail-panel" id="detail-panel">
                <button class="close-btn" id="close-detail">×</button>
                <h3 id="detail-title"></h3>
                <span class="type-badge" id="detail-type"></span>
                <div class="props" id="detail-props"></div>
            </div>
        </main>
    </div>
    
    <script>
        // ========== 配置和数据 ==========
        const ENTITY_TYPE_CONFIG = {entity_type_config_js};
        const graphData = {graph_data_js};
        
        // ========== 状态管理 ==========
        const state = {{
            visibleEntityTypes: new Set(graphData.entityTypes),
            visibleRelationTypes: new Set(graphData.relationTypes),
            searchTerm: '',
            filterOnlyMatch: false,
            selectedNode: null
        }};
        
        // ========== 初始化 ==========
        document.getElementById('node-count').textContent = graphData.nodes.length;
        document.getElementById('link-count').textContent = graphData.links.length;
        
        // 生成图例
        const legendContainer = document.getElementById('legend');
        graphData.entityTypes.forEach(type => {{
            const config = ENTITY_TYPE_CONFIG[type] || {{ label: type, color: '#95a5a6' }};
            const item = document.createElement('div');
            item.className = 'legend-item';
            item.innerHTML = `<span class="legend-dot" style="background: ${{config.color}}"></span>${{config.label}}`;
            legendContainer.appendChild(item);
        }});
        
        // 生成实体类型筛选器
        const entityFilterContainer = document.getElementById('entity-type-filters');
        graphData.entityTypes.forEach(type => {{
            const config = ENTITY_TYPE_CONFIG[type] || {{ label: type, color: '#95a5a6' }};
            const item = document.createElement('label');
            item.className = 'filter-item';
            item.innerHTML = `
                <input type="checkbox" checked data-type="${{type}}">
                <span class="color-dot" style="background: ${{config.color}}"></span>
                ${{config.label}}
            `;
            entityFilterContainer.appendChild(item);
        }});
        
        // 生成关系类型筛选器
        const relationFilterContainer = document.getElementById('relation-type-filters');
        graphData.relationTypes.forEach(type => {{
            const displayName = type.replace(/([A-Z])/g, ' $1').trim();
            const item = document.createElement('label');
            item.className = 'filter-item';
            item.innerHTML = `
                <input type="checkbox" checked data-relation="${{type}}">
                ${{displayName.substring(0, 25)}}${{displayName.length > 25 ? '...' : ''}}
            `;
            relationFilterContainer.appendChild(item);
        }});
        
        // ========== D3.js 图谱渲染 ==========
        const container = document.getElementById('graph-container');
        const width = container.clientWidth;
        const height = container.clientHeight;
        
        const svg = d3.select('#graph-container')
            .append('svg')
            .attr('width', width)
            .attr('height', height);
        
        // 添加缩放功能
        const g = svg.append('g');
        const zoom = d3.zoom()
            .scaleExtent([0.1, 4])
            .on('zoom', (event) => g.attr('transform', event.transform));
        svg.call(zoom);
        
        // 创建力导向图
        const simulation = d3.forceSimulation(graphData.nodes)
            .force('link', d3.forceLink(graphData.links).id(d => d.id).distance(80))
            .force('charge', d3.forceManyBody().strength(-200))
            .force('center', d3.forceCenter(width / 2, height / 2))
            .force('collision', d3.forceCollide().radius(d => d.size + 5));
        
        // 绘制边
        const linkGroup = g.append('g').attr('class', 'links');
        let links = linkGroup.selectAll('line')
            .data(graphData.links)
            .join('line')
            .attr('class', 'link')
            .attr('stroke', '#4a5568')
            .attr('stroke-width', 1.5);
        
        // 绘制节点
        const nodeGroup = g.append('g').attr('class', 'nodes');
        let nodes = nodeGroup.selectAll('g')
            .data(graphData.nodes)
            .join('g')
            .attr('class', 'node')
            .call(d3.drag()
                .on('start', dragstarted)
                .on('drag', dragged)
                .on('end', dragended));
        
        nodes.append('circle')
            .attr('r', d => d.size)
            .attr('fill', d => d.color);
        
        nodes.append('text')
            .attr('class', 'node-label')
            .attr('dy', d => d.size + 12)
            .text(d => d.title.length > 12 ? d.title.substring(0, 12) + '...' : d.title);
        
        // 更新位置
        simulation.on('tick', () => {{
            links
                .attr('x1', d => d.source.x)
                .attr('y1', d => d.source.y)
                .attr('x2', d => d.target.x)
                .attr('y2', d => d.target.y);
            
            nodes.attr('transform', d => `translate(${{d.x}},${{d.y}})`);
        }});
        
        // 拖拽函数 - 关键修复：始终允许拖拽
        function dragstarted(event, d) {{
            if (!event.active) simulation.alphaTarget(0.3).restart();
            d.fx = d.x;
            d.fy = d.y;
        }}
        
        function dragged(event, d) {{
            d.fx = event.x;
            d.fy = event.y;
        }}
        
        function dragended(event, d) {{
            if (!event.active) simulation.alphaTarget(0);
            // 不清除 fx, fy，保持节点固定在拖拽后的位置
            // 如果想要节点可以自由移动，取消下面两行的注释
            // d.fx = null;
            // d.fy = null;
        }}
        
        // 节点点击事件
        nodes.on('click', (event, d) => {{
            event.stopPropagation();
            showDetail(d);
        }});
        
        // 点击空白处关闭详情
        svg.on('click', () => {{
            document.getElementById('detail-panel').classList.remove('show');
        }});
        
        // ========== 详情面板 ==========
        function showDetail(node) {{
            const panel = document.getElementById('detail-panel');
            const config = ENTITY_TYPE_CONFIG[node.type] || {{ label: node.type, color: '#95a5a6' }};
            
            document.getElementById('detail-title').textContent = node.title;
            
            const typeEl = document.getElementById('detail-type');
            typeEl.textContent = config.label;
            typeEl.style.background = config.color;
            typeEl.style.color = '#fff';
            
            const propsEl = document.getElementById('detail-props');
            propsEl.innerHTML = '';
            
            // ID
            propsEl.innerHTML += `
                <div class="prop-item">
                    <div class="prop-key">ID</div>
                    <div class="prop-value">${{node.id}}</div>
                </div>
            `;
            
            // 其他属性
            for (const [key, value] of Object.entries(node.properties)) {{
                if (value && key !== 'contentJson') {{
                    let displayValue = value;
                    if (typeof value === 'object') {{
                        displayValue = JSON.stringify(value, null, 2);
                    }}
                    propsEl.innerHTML += `
                        <div class="prop-item">
                            <div class="prop-key">${{key}}</div>
                            <div class="prop-value">${{displayValue}}</div>
                        </div>
                    `;
                }}
            }}
            
            panel.classList.add('show');
        }}
        
        document.getElementById('close-detail').addEventListener('click', () => {{
            document.getElementById('detail-panel').classList.remove('show');
        }});
        
        // ========== 筛选功能 ==========
        function updateVisibility() {{
            const searchTerm = state.searchTerm.toLowerCase();
            
            // 更新节点可见性
            let visibleNodeCount = 0;
            nodes.style('display', d => {{
                const typeVisible = state.visibleEntityTypes.has(d.type);
                const matchSearch = !searchTerm || 
                    d.title.toLowerCase().includes(searchTerm) || 
                    d.id.toLowerCase().includes(searchTerm);
                
                const visible = typeVisible && (!state.filterOnlyMatch || matchSearch);
                if (visible) visibleNodeCount++;
                return visible ? null : 'none';
            }});
            
            // 高亮匹配节点
            nodes.select('text').classed('highlighted', d => {{
                return searchTerm && (
                    d.title.toLowerCase().includes(searchTerm) || 
                    d.id.toLowerCase().includes(searchTerm)
                );
            }});
            
            // 更新边可见性
            const visibleNodeIds = new Set();
            graphData.nodes.forEach(n => {{
                if (state.visibleEntityTypes.has(n.type)) {{
                    if (!state.filterOnlyMatch || !searchTerm || 
                        n.title.toLowerCase().includes(searchTerm) || 
                        n.id.toLowerCase().includes(searchTerm)) {{
                        visibleNodeIds.add(n.id);
                    }}
                }}
            }});
            
            let visibleLinkCount = 0;
            links.style('display', d => {{
                const sourceVisible = visibleNodeIds.has(d.source.id);
                const targetVisible = visibleNodeIds.has(d.target.id);
                const relationVisible = state.visibleRelationTypes.has(d.relationName);
                
                const visible = sourceVisible && targetVisible && relationVisible;
                if (visible) visibleLinkCount++;
                return visible ? null : 'none';
            }});
            
            document.getElementById('visible-nodes').textContent = visibleNodeCount;
            document.getElementById('visible-links').textContent = visibleLinkCount;
        }}
        
        // 实体类型筛选事件
        entityFilterContainer.addEventListener('change', (e) => {{
            if (e.target.type === 'checkbox') {{
                const type = e.target.dataset.type;
                if (e.target.checked) {{
                    state.visibleEntityTypes.add(type);
                }} else {{
                    state.visibleEntityTypes.delete(type);
                }}
                updateVisibility();
            }}
        }});
        
        // 关系类型筛选事件
        relationFilterContainer.addEventListener('change', (e) => {{
            if (e.target.type === 'checkbox') {{
                const relation = e.target.dataset.relation;
                if (e.target.checked) {{
                    state.visibleRelationTypes.add(relation);
                }} else {{
                    state.visibleRelationTypes.delete(relation);
                }}
                updateVisibility();
            }}
        }});
        
        // 全选/全不选
        document.getElementById('select-all-types').addEventListener('click', () => {{
            entityFilterContainer.querySelectorAll('input').forEach(cb => cb.checked = true);
            state.visibleEntityTypes = new Set(graphData.entityTypes);
            updateVisibility();
        }});
        
        document.getElementById('deselect-all-types').addEventListener('click', () => {{
            entityFilterContainer.querySelectorAll('input').forEach(cb => cb.checked = false);
            state.visibleEntityTypes.clear();
            updateVisibility();
        }});
        
        document.getElementById('select-all-relations').addEventListener('click', () => {{
            relationFilterContainer.querySelectorAll('input').forEach(cb => cb.checked = true);
            state.visibleRelationTypes = new Set(graphData.relationTypes);
            updateVisibility();
        }});
        
        document.getElementById('deselect-all-relations').addEventListener('click', () => {{
            relationFilterContainer.querySelectorAll('input').forEach(cb => cb.checked = false);
            state.visibleRelationTypes.clear();
            updateVisibility();
        }});
        
        // 搜索功能
        const searchInput = document.getElementById('search-input');
        searchInput.addEventListener('keyup', (e) => {{
            if (e.key === 'Enter') {{
                state.searchTerm = e.target.value;
                updateVisibility();
            }}
        }});
        
        document.getElementById('filter-only-match').addEventListener('change', (e) => {{
            state.filterOnlyMatch = e.target.checked;
            updateVisibility();
        }});
        
        document.getElementById('clear-search').addEventListener('click', () => {{
            searchInput.value = '';
            state.searchTerm = '';
            state.filterOnlyMatch = false;
            document.getElementById('filter-only-match').checked = false;
            updateVisibility();
        }});
        
        // 初始更新
        updateVisibility();
        
        // 窗口大小变化
        window.addEventListener('resize', () => {{
            const newWidth = container.clientWidth;
            const newHeight = container.clientHeight;
            svg.attr('width', newWidth).attr('height', newHeight);
            simulation.force('center', d3.forceCenter(newWidth / 2, newHeight / 2));
            simulation.alpha(0.3).restart();
        }});
    </script>
</body>
</html>
'''


def main():
    """主函数示例"""
    # 示例1: 生成完整课标图谱
    print("\n" + "="*60)
    print("生成高中数学课标完整图谱")
    print("="*60)
    
    generator = GraphGenerator("高中数学")
    generator.load_main_graph()
    generator.generate_html("高中数学_课标.html", 
                           title="高中数学课标知识图谱",
                           description="课程标准完整图谱")
    
    # 示例2: 生成课标+教材混合图谱
    print("\n" + "="*60)
    print("生成高中数学课标+人教B版必修一图谱")
    print("="*60)
    
    generator2 = GraphGenerator("高中数学")
    generator2.load_main_graph()
    generator2.mount_textbook("renjiao_B")
    generator2.generate_html("高中数学_人教B版.html",
                            title="高中数学 · 人教B版",
                            description="课标+教材混合图谱")
    generator2.generate_neo4j_cypher(
        str(DATA_ROOT / "高中数学" / "books" / "renjiao_B" / "neo4j_import.cypher"),
        title="高中数学人教B版完整图谱"
    )


if __name__ == "__main__":
    main()
