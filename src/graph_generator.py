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

# 导入统一配置
from config import (
    PROJECT_ROOT, DATA_ROOT, STATIC_ROOT, TEMPLATE_ROOT,
    ENTITY_TYPE_CONFIG
)


class GraphGenerator:
    """统一图谱生成器"""
    
    # 实体类型配置（统一的平铺字典）

    def __init__(self, subject_path: str):
        """
        初始化图谱生成器
        
        Args:
            subject_path: 学科数据路径，如 "高中数学"
        """
        self.subject_path = DATA_ROOT / subject_path
        self.entities_path = self.subject_path / "entities"
        self.relations_path = self.subject_path / "relations"
        self.ENTITY_TYPE_CONFIG = ENTITY_TYPE_CONFIG
        
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
        
        # 支持两种格式：
        # 1. 单个文件格式：entities.json 和 relations.json
        # 2. 目录格式：entities/ 和 relations/ 目录下的多个文件
        entities_file = full_path / "entities.json"
        relations_file = full_path / "relations.json"
        entities_dir = full_path / "entities"
        relations_dir = full_path / "relations"
        
        entity_count_before = len(self.entities)
        relation_count_before = len(self.relations)
        
        # 加载实体
        if entities_file.exists():
            self._load_entity_file(entities_file)
        elif entities_dir.exists():
            # 加载目录下所有实体文件
            for entity_file in entities_dir.glob("*.json"):
                self._load_entity_file(entity_file)
        
        # 加载关系
        if relations_file.exists():
            self._load_relation_file(relations_file)
        elif relations_dir.exists():
            # 加载目录下所有关系文件
            for relation_file in relations_dir.glob("*.json"):
                self._load_relation_file(relation_file)
        
        entity_added = len(self.entities) - entity_count_before
        relation_added = len(self.relations) - relation_count_before
            
        print(f"   ✓ 新增 {entity_added} 个实体, {relation_added} 条关系")
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
        # 加载模板文件
        template_path = TEMPLATE_ROOT / "graph_template.html"
        if not template_path.exists():
            raise FileNotFoundError(f"模板文件不存在: {template_path}")
        
        with open(template_path, 'r', encoding='utf-8') as f:
            template = f.read()
        
        # 生成实体类型配置
        entity_type_config_js = json.dumps(self.ENTITY_TYPE_CONFIG, ensure_ascii=False, indent=2)
        graph_data_js = json.dumps(graph_data, ensure_ascii=False)
        
        # 使用字符串替换而不是.format()，这样模板中的大括号可以保持单大括号
        html_content = template.replace('{title}', title)
        html_content = html_content.replace('{description}', description)
        html_content = html_content.replace('{entity_type_config_js}', entity_type_config_js)
        html_content = html_content.replace('{graph_data_js}', graph_data_js)
        
        return html_content


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
