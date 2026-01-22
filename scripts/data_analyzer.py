#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
数据质量分析工具

功能：
1. 检查实体完整性（必填字段）
2. 检查关系有效性（source/target是否存在）
3. 统计数据分布
4. 生成质量报告

用法：
  python scripts/data_analyzer.py --check              # 完整检查
  python scripts/data_analyzer.py --check --subject 高中数学  # 检查指定学科
  python scripts/data_analyzer.py --stats              # 统计分析
  python scripts/data_analyzer.py --report             # 生成报告
"""

import os
import sys
import json
import argparse
from pathlib import Path
from datetime import datetime
from typing import Dict, List, Set, Any, Optional
from collections import defaultdict

# 项目根目录
PROJECT_ROOT = Path(__file__).parent.parent
DATA_ROOT = PROJECT_ROOT / "图谱数据"

# 必填字段定义
REQUIRED_ENTITY_FIELDS = ['identifier', 'type', 'title']
REQUIRED_RELATION_FIELDS = ['source', 'target']


class DataAnalyzer:
    """数据质量分析器"""
    
    def __init__(self, data_root: Path = DATA_ROOT):
        self.data_root = data_root
        self.issues: Dict[str, List[Dict]] = defaultdict(list)
        self.stats: Dict[str, Dict] = {}
    
    def get_subject_dirs(self, subject: Optional[str] = None) -> List[Path]:
        """获取学科目录列表"""
        dirs = []
        for item in sorted(self.data_root.iterdir()):
            if item.is_dir() and item.name != "导出数据":
                if subject is None or subject in item.name:
                    dirs.append(item)
        return dirs
    
    def load_entities(self, subject_dir: Path) -> Dict[str, Dict]:
        """加载学科的所有实体，返回 {identifier: entity} 字典"""
        entities = {}
        entities_dir = subject_dir / "entities"
        if not entities_dir.exists():
            entities_dir = subject_dir / "实体"
        
        if not entities_dir.exists():
            return entities
        
        for json_file in entities_dir.glob("*.json"):
            try:
                with open(json_file, 'r', encoding='utf-8') as f:
                    data = json.load(f)
                
                items = data if isinstance(data, list) else data.get('entities', [])
                for entity in items:
                    if 'identifier' in entity:
                        entities[entity['identifier']] = entity
            except Exception as e:
                self.issues["file_error"].append({
                    "file": str(json_file),
                    "error": str(e)
                })
        
        return entities
    
    def load_relations(self, subject_dir: Path) -> List[Dict]:
        """加载学科的所有关系"""
        relations = []
        relations_dir = subject_dir / "relations"
        if not relations_dir.exists():
            relations_dir = subject_dir / "relation"
        if not relations_dir.exists():
            relations_dir = subject_dir / "关系"
        
        if not relations_dir.exists():
            return relations
        
        for json_file in relations_dir.glob("*.json"):
            try:
                with open(json_file, 'r', encoding='utf-8') as f:
                    data = json.load(f)
                
                items = data if isinstance(data, list) else data.get('relations', 
                    data.get('relation', data.get('relationships', [])))
                for rel in items:
                    rel['_source_file'] = json_file.name
                    relations.append(rel)
            except Exception as e:
                self.issues["file_error"].append({
                    "file": str(json_file),
                    "error": str(e)
                })
        
        return relations
    
    # ========== 检查功能 ==========
    
    def check_entity_completeness(self, subject_dir: Path) -> List[Dict]:
        """检查实体必填字段完整性"""
        issues = []
        entities_dir = subject_dir / "entities"
        if not entities_dir.exists():
            entities_dir = subject_dir / "实体"
        
        if not entities_dir.exists():
            return issues
        
        for json_file in entities_dir.glob("*.json"):
            try:
                with open(json_file, 'r', encoding='utf-8') as f:
                    data = json.load(f)
                
                items = data if isinstance(data, list) else data.get('entities', [])
                for i, entity in enumerate(items):
                    missing = []
                    for field in REQUIRED_ENTITY_FIELDS:
                        if field not in entity or not entity[field]:
                            missing.append(field)
                    
                    if missing:
                        issues.append({
                            "type": "missing_field",
                            "file": json_file.name,
                            "index": i,
                            "identifier": entity.get('identifier', f'索引{i}'),
                            "missing_fields": missing,
                            "subject": subject_dir.name
                        })
            except Exception:
                pass
        
        return issues
    
    def check_relation_validity(self, subject_dir: Path) -> List[Dict]:
        """检查关系的source/target是否指向存在的实体"""
        issues = []
        
        # 加载所有实体
        entities = self.load_entities(subject_dir)
        entity_ids = set(entities.keys())
        
        # 检查关系
        relations = self.load_relations(subject_dir)
        
        for i, rel in enumerate(relations):
            source = rel.get('source', '')
            target = rel.get('target', '')
            
            # 检查必填字段
            if not source:
                issues.append({
                    "type": "missing_source",
                    "file": rel.get('_source_file', ''),
                    "index": i,
                    "relation": rel.get('relationName', ''),
                    "subject": subject_dir.name
                })
            elif source not in entity_ids:
                issues.append({
                    "type": "invalid_source",
                    "file": rel.get('_source_file', ''),
                    "source": source,
                    "relation": rel.get('relationName', ''),
                    "subject": subject_dir.name
                })
            
            if not target:
                issues.append({
                    "type": "missing_target",
                    "file": rel.get('_source_file', ''),
                    "index": i,
                    "relation": rel.get('relationName', ''),
                    "subject": subject_dir.name
                })
            elif target not in entity_ids:
                issues.append({
                    "type": "invalid_target",
                    "file": rel.get('_source_file', ''),
                    "target": target,
                    "relation": rel.get('relationName', ''),
                    "subject": subject_dir.name
                })
        
        return issues
    
    def check_file_naming(self, subject_dir: Path) -> List[Dict]:
        """检查文件命名规范"""
        issues = []
        
        # 检查实体目录
        entities_dir = subject_dir / "entities"
        if entities_dir.exists():
            for json_file in entities_dir.glob("*.json"):
                name = json_file.stem
                # 检查是否包含特殊字符
                if '（' in name or '）' in name:
                    issues.append({
                        "type": "special_char_in_name",
                        "file": json_file.name,
                        "subject": subject_dir.name,
                        "suggestion": name.replace('（', '_').replace('）', '')
                    })
                # 检查是否小写开头
                if name[0].islower() and name not in ['id', 'type']:
                    issues.append({
                        "type": "lowercase_filename",
                        "file": json_file.name,
                        "subject": subject_dir.name,
                        "suggestion": name[0].upper() + name[1:]
                    })
        
        # 检查关系目录
        relations_dir = subject_dir / "relations"
        if relations_dir.exists():
            for json_file in relations_dir.glob("*.json"):
                name = json_file.stem
                # 检查是否混用 - 和 _
                if '-' in name and '_' in name:
                    issues.append({
                        "type": "mixed_separator",
                        "file": json_file.name,
                        "subject": subject_dir.name,
                        "suggestion": name.replace('-', '_')
                    })
                # 检查拼写错误
                if 'Chaptert' in name or 'Moduke' in name:
                    issues.append({
                        "type": "typo_in_filename",
                        "file": json_file.name,
                        "subject": subject_dir.name
                    })
        
        return issues
    
    def check_all(self, subject: Optional[str] = None) -> Dict[str, List[Dict]]:
        """执行所有检查"""
        self.issues = defaultdict(list)
        
        for subject_dir in self.get_subject_dirs(subject):
            # 实体完整性检查
            entity_issues = self.check_entity_completeness(subject_dir)
            self.issues["entity_completeness"].extend(entity_issues)
            
            # 关系有效性检查
            relation_issues = self.check_relation_validity(subject_dir)
            self.issues["relation_validity"].extend(relation_issues)
            
            # 文件命名检查
            naming_issues = self.check_file_naming(subject_dir)
            self.issues["file_naming"].extend(naming_issues)
        
        return self.issues
    
    # ========== 统计功能 ==========
    
    def collect_stats(self, subject: Optional[str] = None) -> Dict[str, Dict]:
        """收集数据统计"""
        self.stats = {}
        
        for subject_dir in self.get_subject_dirs(subject):
            entities = self.load_entities(subject_dir)
            relations = self.load_relations(subject_dir)
            
            # 按类型统计实体
            entity_by_type = defaultdict(int)
            for e in entities.values():
                entity_by_type[e.get('type', 'Unknown')] += 1
            
            # 按类型统计关系
            relation_by_type = defaultdict(int)
            for r in relations:
                relation_by_type[r.get('relationName', 'Unknown')] += 1
            
            # contentJson字段统计
            content_fields = defaultdict(int)
            for e in entities.values():
                cj = e.get('contentJson', {})
                if isinstance(cj, dict):
                    for key in cj.keys():
                        content_fields[key] += 1
            
            self.stats[subject_dir.name] = {
                "entity_count": len(entities),
                "relation_count": len(relations),
                "entity_types": dict(entity_by_type),
                "relation_types": dict(relation_by_type),
                "content_fields": dict(content_fields)
            }
        
        return self.stats
    
    # ========== 报告功能 ==========
    
    def print_check_report(self):
        """打印检查报告"""
        print("\n" + "=" * 70)
        print("数据质量检查报告")
        print("=" * 70)
        
        total_issues = 0
        
        # 实体完整性问题
        if self.issues["entity_completeness"]:
            issues = self.issues["entity_completeness"]
            total_issues += len(issues)
            print(f"\n【实体字段缺失】({len(issues)} 个)")
            print("-" * 50)
            by_subject = defaultdict(list)
            for issue in issues:
                by_subject[issue['subject']].append(issue)
            for subj, items in by_subject.items():
                print(f"  [{subj}] {len(items)} 个问题")
                for item in items[:3]:
                    print(f"    - {item['file']}: 缺少 {item['missing_fields']}")
                if len(items) > 3:
                    print(f"    ... 还有 {len(items) - 3} 个")
        
        # 关系有效性问题
        if self.issues["relation_validity"]:
            issues = self.issues["relation_validity"]
            total_issues += len(issues)
            print(f"\n【关系引用无效】({len(issues)} 个)")
            print("-" * 50)
            by_type = defaultdict(list)
            for issue in issues:
                by_type[issue['type']].append(issue)
            for issue_type, items in by_type.items():
                print(f"  {issue_type}: {len(items)} 个")
                for item in items[:2]:
                    if 'source' in item:
                        print(f"    - {item['source'][:50]}...")
                    elif 'target' in item:
                        print(f"    - {item['target'][:50]}...")
        
        # 文件命名问题
        if self.issues["file_naming"]:
            issues = self.issues["file_naming"]
            total_issues += len(issues)
            print(f"\n【文件命名问题】({len(issues)} 个)")
            print("-" * 50)
            for issue in issues[:10]:
                print(f"  [{issue['subject']}] {issue['file']}")
                print(f"    类型: {issue['type']}")
                if 'suggestion' in issue:
                    print(f"    建议: {issue['suggestion']}")
        
        # 文件读取错误
        if self.issues["file_error"]:
            issues = self.issues["file_error"]
            total_issues += len(issues)
            print(f"\n【文件读取错误】({len(issues)} 个)")
            print("-" * 50)
            for issue in issues:
                print(f"  {issue['file']}: {issue['error']}")
        
        print("\n" + "=" * 70)
        print(f"总计: {total_issues} 个问题")
        print("=" * 70)
        
        return total_issues
    
    def print_stats_report(self):
        """打印统计报告"""
        print("\n" + "=" * 70)
        print("数据统计报告")
        print("=" * 70)
        
        total_entities = 0
        total_relations = 0
        all_entity_types = set()
        all_relation_types = set()
        
        print(f"\n{'学科':<25} {'实体数':>8} {'关系数':>8} {'实体类型':>10} {'关系类型':>10}")
        print("-" * 70)
        
        for subj, s in sorted(self.stats.items()):
            total_entities += s['entity_count']
            total_relations += s['relation_count']
            all_entity_types.update(s['entity_types'].keys())
            all_relation_types.update(s['relation_types'].keys())
            
            print(f"{subj:<25} {s['entity_count']:>8} {s['relation_count']:>8} "
                  f"{len(s['entity_types']):>10} {len(s['relation_types']):>10}")
        
        print("-" * 70)
        print(f"{'总计':<25} {total_entities:>8} {total_relations:>8} "
              f"{len(all_entity_types):>10} {len(all_relation_types):>10}")
        
        # 实体类型分布
        print("\n【实体类型分布】")
        print("-" * 50)
        type_totals = defaultdict(int)
        for s in self.stats.values():
            for t, c in s['entity_types'].items():
                type_totals[t] += c
        
        for t, c in sorted(type_totals.items(), key=lambda x: -x[1])[:15]:
            print(f"  {t:<30} {c:>6}")
        if len(type_totals) > 15:
            print(f"  ... 还有 {len(type_totals) - 15} 种类型")
        
        # contentJson字段分布
        print("\n【contentJson常用字段】")
        print("-" * 50)
        field_totals = defaultdict(int)
        for s in self.stats.values():
            for f, c in s['content_fields'].items():
                field_totals[f] += c
        
        for f, c in sorted(field_totals.items(), key=lambda x: -x[1])[:10]:
            print(f"  {f:<30} {c:>6}")
        
        print("\n" + "=" * 70)
    
    def generate_report_file(self, output_path: Optional[str] = None):
        """生成JSON格式报告文件"""
        if output_path is None:
            logs_dir = PROJECT_ROOT / "logs"
            logs_dir.mkdir(exist_ok=True)
            output_path = logs_dir / f"data_analysis_{datetime.now().strftime('%Y%m%d_%H%M%S')}.json"
        
        report = {
            "generateTime": datetime.now().isoformat(),
            "statistics": self.stats,
            "issues": {k: v for k, v in self.issues.items() if v},
            "summary": {
                "total_subjects": len(self.stats),
                "total_entities": sum(s['entity_count'] for s in self.stats.values()),
                "total_relations": sum(s['relation_count'] for s in self.stats.values()),
                "total_issues": sum(len(v) for v in self.issues.values())
            }
        }
        
        with open(output_path, 'w', encoding='utf-8') as f:
            json.dump(report, f, ensure_ascii=False, indent=2)
        
        print(f"\n报告已保存到: {output_path}")
        return output_path


def main():
    parser = argparse.ArgumentParser(
        description="数据质量分析工具",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="""
示例:
  python scripts/data_analyzer.py --check              # 完整检查
  python scripts/data_analyzer.py --check --subject 高中数学  # 检查指定学科
  python scripts/data_analyzer.py --stats              # 统计分析
  python scripts/data_analyzer.py --report             # 生成JSON报告
  python scripts/data_analyzer.py --all                # 执行所有分析
        """
    )
    
    parser.add_argument('--check', action='store_true', help='执行质量检查')
    parser.add_argument('--stats', action='store_true', help='统计分析')
    parser.add_argument('--report', action='store_true', help='生成JSON报告文件')
    parser.add_argument('--all', action='store_true', help='执行所有分析')
    parser.add_argument('--subject', type=str, help='指定学科（目录名部分匹配）')
    parser.add_argument('--output', type=str, help='报告输出路径')
    
    args = parser.parse_args()
    
    # 默认执行检查
    if not any([args.check, args.stats, args.report, args.all]):
        args.check = True
    
    analyzer = DataAnalyzer()
    
    if args.all:
        args.check = True
        args.stats = True
        args.report = True
    
    if args.check:
        analyzer.check_all(args.subject)
        analyzer.print_check_report()
    
    if args.stats:
        analyzer.collect_stats(args.subject)
        analyzer.print_stats_report()
    
    if args.report:
        if not analyzer.stats:
            analyzer.collect_stats(args.subject)
        if not analyzer.issues:
            analyzer.check_all(args.subject)
        analyzer.generate_report_file(args.output)


if __name__ == '__main__':
    main()
