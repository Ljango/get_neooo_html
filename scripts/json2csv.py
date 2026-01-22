#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
JSON数据导出为Excel工具
用于学科老师审核图谱数据的完整性和准确性

功能：
1. 导出实体数据：每种实体类型一个sheet，包含实体属性和contentJson展开字段
2. 导出关系数据：包含头尾节点的名称、类型、ID和关系名称
"""

import json
import os
import re
from pathlib import Path
from typing import Dict, List, Any, Optional
import pandas as pd
from collections import defaultdict


class Json2CsvExporter:
    """JSON数据导出为Excel工具"""
    
    def __init__(self, data_dir: str, output_dir: str = None):
        """
        初始化导出器
        
        Args:
            data_dir: 数据目录路径（包含entities和relations子目录）
            output_dir: 输出目录路径，默认为data_dir同级目录
        """
        self.data_dir = Path(data_dir)
        self.entities_dir = self.data_dir / "entities"
        self.relations_dir = self.data_dir / "relations"
        
        if output_dir:
            self.output_dir = Path(output_dir)
        else:
            self.output_dir = self.data_dir.parent / "导出数据"
        
        self.output_dir.mkdir(exist_ok=True)
        
        # 实体映射：identifier -> {title, type, ...}
        self.entity_map: Dict[str, Dict[str, Any]] = {}
        
        # 学科名称（从目录名提取）
        self.subject_name = self.data_dir.name
        
        # 为每个学科创建独立的输出文件夹
        self.output_dir = self.output_dir / self.subject_name
        self.output_dir.mkdir(parents=True, exist_ok=True)
    
    def load_entities(self) -> Dict[str, List[Dict[str, Any]]]:
        """
        加载所有实体数据
        
        Returns:
            按实体类型分组的实体字典
        """
        entities_by_type = defaultdict(list)
        
        if not self.entities_dir.exists():
            print(f"⚠️  警告: 实体目录不存在: {self.entities_dir}")
            return entities_by_type
        
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
                    print(f"  ⚠️  警告: {entity_file.name} 格式不支持")
                    continue
                
                if not entity_list:
                    continue
                
                # 获取实体类型
                entity_type = entity_list[0].get('type', entity_file.stem)
                
                for entity in entity_list:
                    identifier = entity.get('identifier', '')
                    if identifier:
                        # 建立映射
                        self.entity_map[identifier] = {
                            'title': entity.get('title', ''),
                            'type': entity.get('type', entity_type),
                            'description': entity.get('description', ''),
                            'entity': entity
                        }
                    
                    entities_by_type[entity_type].append(entity)
                
                print(f"  ✓ {entity_file.name}: {len(entity_list)} 个 {entity_type}")
            
            except Exception as e:
                print(f"  ✗ 读取 {entity_file.name} 失败: {e}")
        
        total = sum(len(v) for v in entities_by_type.values())
        print(f"\n📊 总计加载 {total} 个实体，{len(self.entity_map)} 个identifier映射")
        return entities_by_type
    
    def clean_cell_value(self, value: Any) -> Any:
        """
        清理单元格值，移除Excel不支持的控制字符
        
        Args:
            value: 原始值
            
        Returns:
            清理后的值
        """
        if value is None:
            return ''
        
        if isinstance(value, str):
            # 移除控制字符（保留换行符、制表符）
            # Excel不支持的控制字符：\x00-\x08, \x0B-\x0C, \x0E-\x1F
            value = re.sub(r'[\x00-\x08\x0B-\x0C\x0E-\x1F]', '', value)
            return value
        
        return value
    
    def expand_content_json(self, content_json: Any) -> Dict[str, Any]:
        """
        展开contentJson字段为CJ_xxx格式
        
        Args:
            content_json: contentJson字段的值
            
        Returns:
            展开后的字段字典
        """
        if not content_json:
            return {}
        
        if isinstance(content_json, dict):
            result = {}
            for key, value in content_json.items():
                if isinstance(value, (list, dict)):
                    # 复杂类型转为JSON字符串
                    json_str = json.dumps(value, ensure_ascii=False)
                    result[f'CJ_{key}'] = self.clean_cell_value(json_str)
                else:
                    result[f'CJ_{key}'] = self.clean_cell_value(value)
            return result
        else:
            json_str = json.dumps(content_json, ensure_ascii=False)
            return {'CJ_content': self.clean_cell_value(json_str)}
    
    def export_entities(self, entities_by_type: Dict[str, List[Dict[str, Any]]]):
        """
        导出实体数据到Excel
        
        Args:
            entities_by_type: 按类型分组的实体字典
        """
        output_file = self.output_dir / f"{self.subject_name}_实体数据.xlsx"
        
        print(f"\n📝 导出实体数据到: {output_file}")
        
        with pd.ExcelWriter(output_file, engine='openpyxl') as writer:
            for entity_type, entities in sorted(entities_by_type.items()):
                print(f"  处理 {entity_type}: {len(entities)} 个实体")
                
                rows = []
                for entity in entities:
                    # 基础字段
                    row = {
                        '实体类型': self.clean_cell_value(entity.get('type', entity_type)),
                        '实体名称': self.clean_cell_value(entity.get('title', '')),
                        '实体ID': self.clean_cell_value(entity.get('identifier', '')),
                        '实体描述': self.clean_cell_value(entity.get('description', '')),
                    }
                    
                    # 展开contentJson
                    content_json = entity.get('contentJson', {})
                    expanded = self.expand_content_json(content_json)
                    row.update(expanded)
                    
                    # 添加其他字段（除了已处理的）
                    for key, value in entity.items():
                        if key not in ['type', 'title', 'identifier', 'description', 'contentJson']:
                            if isinstance(value, (list, dict)):
                                json_str = json.dumps(value, ensure_ascii=False)
                                row[key] = self.clean_cell_value(json_str)
                            else:
                                row[key] = self.clean_cell_value(value)
                    
                    rows.append(row)
                
                # 创建DataFrame
                df = pd.DataFrame(rows)
                
                # 确保列顺序：基础字段在前，CJ_字段在后，其他字段最后
                base_cols = ['实体类型', '实体名称', '实体ID', '实体描述']
                cj_cols = [c for c in df.columns if c.startswith('CJ_')]
                other_cols = [c for c in df.columns if c not in base_cols and not c.startswith('CJ_')]
                
                df = df[base_cols + sorted(cj_cols) + other_cols]
                
                # 写入sheet（sheet名称限制31字符）
                sheet_name = entity_type[:31] if len(entity_type) <= 31 else entity_type[:28] + '...'
                df.to_excel(writer, sheet_name=sheet_name, index=False)
        
        print(f"✅ 实体数据导出完成: {output_file}")
    
    def load_relations(self) -> Dict[str, List[Dict[str, Any]]]:
        """
        加载所有关系数据，按文件分组
        
        Returns:
            按文件名分组的关系字典 {文件名: [关系列表]}
        """
        relations_by_file = {}
        
        if not self.relations_dir.exists():
            print(f"⚠️  警告: 关系目录不存在: {self.relations_dir}")
            return relations_by_file
        
        relation_files = list(self.relations_dir.glob('*.json'))
        print(f"\n📂 找到 {len(relation_files)} 个关系文件")
        
        total_relations = 0
        
        for relation_file in relation_files:
            try:
                with open(relation_file, 'r', encoding='utf-8') as f:
                    data = json.load(f)
                
                # 处理不同的JSON格式
                if isinstance(data, dict):
                    if 'relations' in data:
                        relation_list = data['relations']
                    elif 'relationships' in data:
                        relation_list = data['relationships']
                    elif 'relation' in data:
                        relation_list = data['relation']
                    else:
                        print(f"  ⚠️  警告: {relation_file.name} 格式不支持")
                        continue
                elif isinstance(data, list):
                    relation_list = data
                else:
                    print(f"  ⚠️  警告: {relation_file.name} 格式不支持")
                    continue
                
                # 使用文件名（不含扩展名）作为key
                file_key = relation_file.stem
                relations_by_file[file_key] = relation_list
                total_relations += len(relation_list)
                print(f"  ✓ {relation_file.name}: {len(relation_list)} 个关系")
            
            except Exception as e:
                print(f"  ✗ 读取 {relation_file.name} 失败: {e}")
        
        print(f"\n📊 总计加载 {total_relations} 个关系，分布在 {len(relations_by_file)} 个文件中")
        return relations_by_file
    
    def get_entity_info(self, identifier: str) -> Dict[str, str]:
        """
        根据identifier获取实体信息
        
        Args:
            identifier: 实体identifier
            
        Returns:
            包含title和type的字典
        """
        if identifier in self.entity_map:
            entity_info = self.entity_map[identifier]
            return {
                'title': entity_info.get('title', ''),
                'type': entity_info.get('type', '')
            }
        return {'title': '', 'type': ''}
    
    def export_relations(self, relations_by_file: Dict[str, List[Dict[str, Any]]]):
        """
        导出关系数据到Excel，每个关系文件一个sheet
        
        Args:
            relations_by_file: 按文件名分组的关系字典
        """
        output_file = self.output_dir / f"{self.subject_name}_关系数据.xlsx"
        log_file = self.output_dir / f"{self.subject_name}_缺失节点日志.txt"
        
        print(f"\n📝 导出关系数据到: {output_file}")
        
        missing_source_all = set()
        missing_target_all = set()
        missing_details = []  # 详细记录缺失信息
        
        with pd.ExcelWriter(output_file, engine='openpyxl') as writer:
            for file_name, relations in sorted(relations_by_file.items()):
                print(f"  处理 {file_name}: {len(relations)} 个关系")
                
                rows = []
                missing_source = set()
                missing_target = set()
                
                for idx, rel in enumerate(relations, 1):
                    source_id = rel.get('source', '')
                    target_id = rel.get('target', '')
                    relation_name = rel.get('relationName', rel.get('label', ''))
                    
                    # 获取源节点信息
                    source_info = self.get_entity_info(source_id)
                    if not source_info['title']:
                        missing_source.add(source_id)
                        missing_source_all.add(source_id)
                        missing_details.append({
                            '文件': file_name,
                            '行号': idx,
                            '节点位置': '头节点',
                            '节点ID': source_id,
                            '关系名称': relation_name,
                            '尾节点ID': target_id
                        })
                    
                    # 获取目标节点信息
                    target_info = self.get_entity_info(target_id)
                    if not target_info['title']:
                        missing_target.add(target_id)
                        missing_target_all.add(target_id)
                        missing_details.append({
                            '文件': file_name,
                            '行号': idx,
                            '节点位置': '尾节点',
                            '节点ID': target_id,
                            '关系名称': relation_name,
                            '头节点ID': source_id
                        })
                    
                    row = {
                        '头节点名称': self.clean_cell_value(source_info['title']),
                        '头节点类型': self.clean_cell_value(source_info['type']),
                        '头节点ID': self.clean_cell_value(source_id),
                        '尾节点名称': self.clean_cell_value(target_info['title']),
                        '尾节点类型': self.clean_cell_value(target_info['type']),
                        '尾节点ID': self.clean_cell_value(target_id),
                        '关系名称': self.clean_cell_value(relation_name),
                    }
                    
                    # 添加其他字段
                    for key, value in rel.items():
                        if key not in ['source', 'target', 'relationName', 'label']:
                            if isinstance(value, (list, dict)):
                                json_str = json.dumps(value, ensure_ascii=False)
                                row[key] = self.clean_cell_value(json_str)
                            else:
                                row[key] = self.clean_cell_value(value)
                    
                    rows.append(row)
                
                # 创建DataFrame
                df = pd.DataFrame(rows)
                
                # 确保列顺序
                base_cols = ['头节点名称', '头节点类型', '头节点ID', 
                             '尾节点名称', '尾节点类型', '尾节点ID', '关系名称']
                other_cols = [c for c in df.columns if c not in base_cols]
                df = df[base_cols + other_cols]
                
                # 写入sheet（sheet名称限制31字符，清理特殊字符）
                sheet_name = file_name[:31] if len(file_name) <= 31 else file_name[:28] + '...'
                # Excel sheet名称不能包含某些字符
                sheet_name = sheet_name.replace('/', '_').replace('\\', '_').replace('?', '_')
                sheet_name = sheet_name.replace('*', '_').replace('[', '_').replace(']', '_')
                sheet_name = sheet_name.replace(':', '_')
                
                df.to_excel(writer, sheet_name=sheet_name, index=False)
        
        # 写入详细日志
        self.write_missing_log(log_file, missing_details, missing_source_all, missing_target_all)
        
        print(f"✅ 关系数据导出完成: {output_file}")
        
        if missing_source_all:
            print(f"⚠️  警告: {len(missing_source_all)} 个头节点未找到实体信息")
        if missing_target_all:
            print(f"⚠️  警告: {len(missing_target_all)} 个尾节点未找到实体信息")
        
        if missing_details:
            print(f"📋 详细日志已保存到: {log_file}")
    
    def write_missing_log(self, log_file: Path, missing_details: List[Dict[str, Any]], 
                         missing_source_all: set, missing_target_all: set):
        """
        写入缺失节点的详细日志
        
        Args:
            log_file: 日志文件路径
            missing_details: 缺失节点详细信息列表
            missing_source_all: 所有缺失的头节点ID集合
            missing_target_all: 所有缺失的尾节点ID集合
        """
        with open(log_file, 'w', encoding='utf-8') as f:
            f.write("="*80 + "\n")
            f.write(f"缺失节点信息日志 - {self.subject_name}\n")
            f.write(f"生成时间: {pd.Timestamp.now().strftime('%Y-%m-%d %H:%M:%S')}\n")
            f.write("="*80 + "\n\n")
            
            # 统计摘要
            f.write("【统计摘要】\n")
            f.write(f"  缺失头节点总数: {len(missing_source_all)}\n")
            f.write(f"  缺失尾节点总数: {len(missing_target_all)}\n")
            f.write(f"  涉及的关系文件数: {len(set(d['文件'] for d in missing_details))}\n")
            f.write(f"  涉及的关系总数: {len(missing_details)}\n")
            f.write("\n")
            
            # 按文件分组显示
            f.write("="*80 + "\n")
            f.write("【按关系文件分组】\n")
            f.write("="*80 + "\n\n")
            
            files_summary = {}
            for detail in missing_details:
                file_name = detail['文件']
                if file_name not in files_summary:
                    files_summary[file_name] = {
                        '头节点': [],
                        '尾节点': []
                    }
                
                if detail['节点位置'] == '头节点':
                    files_summary[file_name]['头节点'].append(detail)
                else:
                    files_summary[file_name]['尾节点'].append(detail)
            
            for file_name in sorted(files_summary.keys()):
                summary = files_summary[file_name]
                f.write(f"\n文件: {file_name}.json\n")
                f.write("-" * 80 + "\n")
                
                # 头节点缺失
                if summary['头节点']:
                    f.write(f"\n  缺失头节点 ({len(summary['头节点'])} 个):\n")
                    for detail in summary['头节点']:
                        f.write(f"    行号 {detail['行号']:4d} | ")
                        f.write(f"节点位置: {detail['节点位置']:6s} | ")
                        f.write(f"节点ID: {detail['节点ID']}\n")
                        f.write(f"            | 关系名称: {detail['关系名称']}\n")
                        f.write(f"            | 尾节点ID: {detail['尾节点ID']}\n")
                        f.write("\n")
                
                # 尾节点缺失
                if summary['尾节点']:
                    f.write(f"\n  缺失尾节点 ({len(summary['尾节点'])} 个):\n")
                    for detail in summary['尾节点']:
                        f.write(f"    行号 {detail['行号']:4d} | ")
                        f.write(f"节点位置: {detail['节点位置']:6s} | ")
                        f.write(f"节点ID: {detail['节点ID']}\n")
                        f.write(f"            | 关系名称: {detail['关系名称']}\n")
                        f.write(f"            | 头节点ID: {detail['头节点ID']}\n")
                        f.write("\n")
            
            # 按节点ID汇总
            f.write("\n" + "="*80 + "\n")
            f.write("【按缺失节点ID汇总】\n")
            f.write("="*80 + "\n\n")
            
            # 头节点汇总
            if missing_source_all:
                f.write("缺失的头节点ID列表:\n")
                for node_id in sorted(missing_source_all):
                    # 找出所有使用这个头节点的关系
                    related_rels = [d for d in missing_details 
                                   if d['节点位置'] == '头节点' and d['节点ID'] == node_id]
                    f.write(f"  {node_id}\n")
                    f.write(f"    出现在 {len(related_rels)} 个关系中:\n")
                    for rel in related_rels[:5]:  # 只显示前5个
                        f.write(f"      - {rel['文件']}.json (行号 {rel['行号']}, 关系: {rel['关系名称']})\n")
                    if len(related_rels) > 5:
                        f.write(f"      ... 还有 {len(related_rels) - 5} 个关系\n")
                    f.write("\n")
            
            # 尾节点汇总
            if missing_target_all:
                f.write("\n缺失的尾节点ID列表:\n")
                for node_id in sorted(missing_target_all):
                    # 找出所有使用这个尾节点的关系
                    related_rels = [d for d in missing_details 
                                   if d['节点位置'] == '尾节点' and d['节点ID'] == node_id]
                    f.write(f"  {node_id}\n")
                    f.write(f"    出现在 {len(related_rels)} 个关系中:\n")
                    for rel in related_rels[:5]:  # 只显示前5个
                        f.write(f"      - {rel['文件']}.json (行号 {rel['行号']}, 关系: {rel['关系名称']})\n")
                    if len(related_rels) > 5:
                        f.write(f"      ... 还有 {len(related_rels) - 5} 个关系\n")
                    f.write("\n")
            
            f.write("\n" + "="*80 + "\n")
            f.write("【排查建议】\n")
            f.write("="*80 + "\n")
            f.write("1. 检查entities目录中是否存在对应的实体文件\n")
            f.write("2. 检查实体文件中的identifier字段是否与关系文件中的source/target完全匹配\n")
            f.write("3. 注意identifier的大小写、空格、特殊字符等细节\n")
            f.write("4. 检查是否有实体文件格式错误（JSON解析失败）\n")
            f.write("5. 检查是否有实体文件被遗漏未加载\n")
            f.write("="*80 + "\n")
    
    def export(self):
        """执行完整导出流程"""
        print("="*60)
        print(f"📊 JSON数据导出工具")
        print(f"   数据目录: {self.data_dir}")
        print(f"   输出目录: {self.output_dir}")
        print("="*60)
        
        # 1. 加载实体
        entities_by_type = self.load_entities()
        
        if not entities_by_type:
            print("❌ 没有找到实体数据，无法导出")
            return
        
        # 2. 导出实体数据
        self.export_entities(entities_by_type)
        
        # 3. 加载关系
        relations_by_file = self.load_relations()
        
        if not relations_by_file:
            print("⚠️  没有找到关系数据")
        else:
            # 4. 导出关系数据
            self.export_relations(relations_by_file)
        
        print("\n" + "="*60)
        print("✅ 导出完成！")
        print("="*60)


def main():
    """主函数"""
    import argparse
    
    parser = argparse.ArgumentParser(
        description='JSON数据导出为Excel工具',
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog='''
示例:
  # 导出单个学科
  python3 json2csv.py "图谱数据/高中数学-with-books"
  
  # 指定输出目录
  python3 json2csv.py "图谱数据/高中数学-with-books" -o "导出数据"
  
  # 批量导出所有学科（需要手动指定）
  for dir in 图谱数据/*/; do python3 json2csv.py "$dir"; done
        '''
    )
    parser.add_argument('data_dir', type=str, nargs='?', help='数据目录路径（包含entities和relations子目录）')
    parser.add_argument('-o', '--output', type=str, default=None, help='输出目录路径（默认：数据目录同级/导出数据）')
    parser.add_argument('--all', action='store_true', help='批量导出所有学科（需要指定数据根目录）')
    
    args = parser.parse_args()
    
    if args.all:
        # 批量导出模式
        if not args.data_dir:
            print("❌ 错误: 批量导出模式需要指定数据根目录")
            print("   例如: python3 json2csv.py 图谱数据 --all")
            return
        
        data_root = Path(args.data_dir)
        if not data_root.exists():
            print(f"❌ 错误: 数据根目录不存在: {data_root}")
            return
        
        # 查找所有包含entities子目录的目录
        subject_dirs = [d for d in data_root.iterdir() 
                        if d.is_dir() and (d / 'entities').exists()]
        
        if not subject_dirs:
            print(f"❌ 错误: 在 {data_root} 中未找到包含entities子目录的学科目录")
            return
        
        print(f"📚 找到 {len(subject_dirs)} 个学科目录，开始批量导出...\n")
        
        for i, subject_dir in enumerate(sorted(subject_dirs), 1):
            print(f"\n{'='*60}")
            print(f"[{i}/{len(subject_dirs)}] 处理: {subject_dir.name}")
            print('='*60)
            
            try:
                exporter = Json2CsvExporter(str(subject_dir), args.output)
                exporter.export()
            except Exception as e:
                print(f"❌ 导出失败: {e}")
                import traceback
                traceback.print_exc()
        
        print(f"\n{'='*60}")
        print(f"✅ 批量导出完成！共处理 {len(subject_dirs)} 个学科")
        print('='*60)
    
    else:
        # 单个导出模式
        if not args.data_dir:
            parser.print_help()
            return
        
        data_dir = Path(args.data_dir)
        if not data_dir.exists():
            print(f"❌ 错误: 数据目录不存在: {data_dir}")
            return
        
        # 执行导出
        exporter = Json2CsvExporter(str(data_dir), args.output)
        exporter.export()


if __name__ == '__main__':
    main()
