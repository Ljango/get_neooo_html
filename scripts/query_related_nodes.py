#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
查询与指定节点相关的所有节点数据
"""

import json
from pathlib import Path
from typing import Dict, List, Set, Any, Optional


class NodeQuery:
    """节点查询工具"""
    
    def __init__(self, subject_dir: str = '高中数学'):
        self.base_dir = Path(__file__).parent
        self.subject_dir = self.base_dir / subject_dir
        self.entities_dir = self.subject_dir / 'entities'
        self.relations_dir = self.subject_dir / 'relations'
        
        # 加载所有实体和关系
        self.entities = self._load_all_entities()
        self.relations = self._load_all_relations()
        
        # 构建实体映射
        self.entity_map = {e['identifier']: e for e in self.entities if 'identifier' in e}
    
    def _load_all_entities(self) -> List[Dict]:
        """加载所有实体"""
        entities = []
        for entity_file in self.entities_dir.glob('*.json'):
            try:
                with open(entity_file, 'r', encoding='utf-8') as f:
                    data = json.load(f)
                if isinstance(data, dict) and 'entities' in data:
                    entities.extend(data['entities'])
                elif isinstance(data, list):
                    entities.extend(data)
            except Exception as e:
                print(f"读取 {entity_file.name} 失败: {e}")
        return entities
    
    def _load_all_relations(self) -> List[Dict]:
        """加载所有关系"""
        relations = []
        for relation_file in self.relations_dir.glob('*.json'):
            try:
                with open(relation_file, 'r', encoding='utf-8') as f:
                    data = json.load(f)
                if isinstance(data, dict) and 'relationships' in data:
                    relations.extend(data['relationships'])
                elif isinstance(data, list):
                    relations.extend(data)
            except Exception as e:
                print(f"读取 {relation_file.name} 失败: {e}")
        return relations
    
    def find_related_nodes(self, identifier: str, max_depth: int = 2) -> Dict[str, Any]:
        """
        查找与指定节点相关的所有节点
        
        Args:
            identifier: 节点标识符
            max_depth: 最大搜索深度（默认2层）
            
        Returns:
            包含相关节点和关系的字典
        """
        if identifier not in self.entity_map:
            return {
                'target': None,
                'related_nodes': [],
                'relations': [],
                'error': f'未找到节点: {identifier}'
            }
        
        target_node = self.entity_map[identifier]
        visited = {}  # 改为字典，记录访问深度
        related_nodes = {}
        related_relations = []
        
        def traverse(node_id: str, depth: int = 0):
            if depth > max_depth:
                return
            
            # 避免重复处理同一节点（但允许在不同深度访问）
            if node_id in visited and depth >= visited[node_id]:
                return
            
            visited[node_id] = depth
            
            # 查找所有与该节点相关的关系
            for rel in self.relations:
                source = rel.get('source')
                target = rel.get('target')
                
                # 规范化identifier以便匹配
                source_norm = self._normalize_identifier(source)
                target_norm = self._normalize_identifier(target)
                node_id_norm = self._normalize_identifier(node_id)
                
                if source_norm == node_id_norm and target_norm != node_id_norm:
                    # 找到目标节点（排除自环）
                    actual_target = self._find_entity_by_normalized_id(target_norm)
                    if actual_target and actual_target in self.entity_map:
                        if actual_target not in related_nodes:
                            related_nodes[actual_target] = self.entity_map[actual_target]
                        related_relations.append({
                            'relation': rel,
                            'direction': 'outgoing',
                            'depth': depth,
                            'source_id': source,
                            'target_id': target
                        })
                        if depth < max_depth:
                            traverse(actual_target, depth + 1)
                
                elif target_norm == node_id_norm and source_norm != node_id_norm:
                    # 找到源节点（排除自环）
                    actual_source = self._find_entity_by_normalized_id(source_norm)
                    if actual_source and actual_source in self.entity_map:
                        if actual_source not in related_nodes:
                            related_nodes[actual_source] = self.entity_map[actual_source]
                        related_relations.append({
                            'relation': rel,
                            'direction': 'incoming',
                            'depth': depth,
                            'source_id': source,
                            'target_id': target
                        })
                        if depth < max_depth:
                            traverse(actual_source, depth + 1)
        
        # 先通过contentJson查找相关节点
        if 'contentJson' in target_node:
            cj = target_node['contentJson']
            for key, value in cj.items():
                if isinstance(value, str) and value.startswith('urn:'):
                    # 这是一个identifier引用
                    if value in self.entity_map and value not in related_nodes:
                        related_nodes[value] = self.entity_map[value]
        
        # 开始遍历
        traverse(identifier)
        
        # 去重关系（基于source和target）
        seen_relations = set()
        unique_relations = []
        for rel_info in related_relations:
            rel = rel_info['relation']
            source = rel.get('source')
            target = rel.get('target')
            # 规范化identifier（处理theme:预备知识:th001 -> theme:th001的情况）
            source_norm = self._normalize_identifier(source)
            target_norm = self._normalize_identifier(target)
            key = (source_norm, target_norm, rel.get('relationName'))
            if key not in seen_relations:
                seen_relations.add(key)
                unique_relations.append(rel_info)
        
        return {
            'target': target_node,
            'related_nodes': list(related_nodes.values()),
            'relations': unique_relations,
            'statistics': {
                'total_related_nodes': len(related_nodes),
                'total_relations': len(unique_relations),
                'incoming_relations': len([r for r in unique_relations if r['direction'] == 'incoming']),
                'outgoing_relations': len([r for r in unique_relations if r['direction'] == 'outgoing'])
            }
        }
    
    def _normalize_identifier(self, identifier: str) -> str:
        """规范化identifier，处理格式不一致的情况"""
        if not identifier:
            return identifier
        # 处理 theme:预备知识:th001 -> theme:th001
        if ':theme:' in identifier and ':th' in identifier:
            parts = identifier.split(':')
            # 找到theme部分和th部分
            theme_idx = -1
            th_idx = -1
            for i, part in enumerate(parts):
                if part == 'theme':
                    theme_idx = i
                elif part.startswith('th'):
                    th_idx = i
            if theme_idx >= 0 and th_idx >= 0 and th_idx > theme_idx + 1:
                # 移除中间的部分
                new_parts = parts[:theme_idx+1] + parts[th_idx:]
                return ':'.join(new_parts)
        return identifier
    
    def _find_entity_by_normalized_id(self, normalized_id: str) -> Optional[str]:
        """通过规范化后的ID查找实际的entity identifier"""
        # 先直接查找
        if normalized_id in self.entity_map:
            return normalized_id
        
        # 如果找不到，尝试规范化所有entity的identifier
        for entity_id in self.entity_map.keys():
            if self._normalize_identifier(entity_id) == normalized_id:
                return entity_id
        
        return None
    
    def print_results(self, results: Dict[str, Any]):
        """打印查询结果"""
        target = results['target']
        if not target:
            print(f"错误: {results.get('error', '未知错误')}")
            return
        
        print("=" * 80)
        print(f"目标节点: {target.get('title', 'N/A')}")
        print(f"标识符: {target.get('identifier', 'N/A')}")
        print(f"类型: {target.get('type', 'N/A')}")
        print(f"描述: {target.get('description', 'N/A')}")
        if 'contentJson' in target:
            print(f"ContentJson: {json.dumps(target['contentJson'], ensure_ascii=False, indent=2)}")
        print("=" * 80)
        
        stats = results['statistics']
        print(f"\n统计信息:")
        print(f"  相关节点数: {stats['total_related_nodes']}")
        print(f"  关系总数: {stats['total_relations']}")
        print(f"  入向关系: {stats['incoming_relations']}")
        print(f"  出向关系: {stats['outgoing_relations']}")
        
        # 按类型分组显示节点
        nodes_by_type = {}
        for node in results['related_nodes']:
            node_type = node.get('type', 'Unknown')
            if node_type not in nodes_by_type:
                nodes_by_type[node_type] = []
            nodes_by_type[node_type].append(node)
        
        print(f"\n相关节点（按类型分组）:")
        for node_type, nodes in sorted(nodes_by_type.items()):
            print(f"\n  [{node_type}] ({len(nodes)}个):")
            for node in nodes:
                print(f"    - {node.get('title', 'N/A')} ({node.get('identifier', 'N/A')})")
        
        # 显示关系
        print(f"\n关系详情:")
        for i, rel_info in enumerate(results['relations'][:30], 1):  # 显示前30个
            rel = rel_info['relation']
            direction = rel_info['direction']
            depth = rel_info['depth']
            source_id = rel.get('source')
            target_id = rel.get('target')
            
            # 尝试通过规范化ID查找实际节点
            actual_source = self._find_entity_by_normalized_id(source_id) or source_id
            actual_target = self._find_entity_by_normalized_id(target_id) or target_id
            
            source_node = self.entity_map.get(actual_source, {})
            target_node = self.entity_map.get(actual_target, {})
            source_title = source_node.get('title', source_id)
            target_title = target_node.get('title', target_id)
            
            if direction == 'outgoing':
                arrow = "→"
            else:
                arrow = "←"
            
            print(f"  {i}. {source_title} {arrow} {target_title}")
            print(f"     关系: {rel.get('relationName', 'N/A')} / {rel.get('label', 'N/A')}")
            print(f"     方向: {direction}, 深度: {depth}")
        
        if len(results['relations']) > 20:
            print(f"\n  ... 还有 {len(results['relations']) - 20} 个关系未显示")
    
    def export_json(self, results: Dict[str, Any], output_file: str):
        """导出结果为JSON文件"""
        output_path = self.base_dir / output_file
        with open(output_path, 'w', encoding='utf-8') as f:
            json.dump(results, f, ensure_ascii=False, indent=2)
        print(f"\n结果已导出到: {output_path}")


def main():
    import argparse
    
    parser = argparse.ArgumentParser(description='查询与指定节点相关的所有节点')
    parser.add_argument('identifier', help='节点标识符')
    parser.add_argument('--subject', '-s', default='高中数学', help='学科目录')
    parser.add_argument('--depth', '-d', type=int, default=2, help='最大搜索深度')
    parser.add_argument('--export', '-e', help='导出JSON文件路径')
    
    args = parser.parse_args()
    
    query = NodeQuery(args.subject)
    results = query.find_related_nodes(args.identifier, args.depth)
    query.print_results(results)
    
    if args.export:
        query.export_json(results, args.export)


if __name__ == '__main__':
    main()
