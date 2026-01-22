#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
数据规范化工具

功能：
1. 检查数据目录中的命名规范问题
2. 修复实体文件命名（统一为PascalCase）
3. 修复identifier大小写不匹配
4. 重命名学科目录

用法：
  python scripts/data_normalizer.py --check              # 检查所有问题
  python scripts/data_normalizer.py --fix --dry-run     # 预览修复操作
  python scripts/data_normalizer.py --fix               # 执行修复
  python scripts/data_normalizer.py --fix --subject 义教道法  # 修复指定学科
"""

import os
import sys
import json
import re
import shutil
import argparse
from pathlib import Path
from datetime import datetime
from typing import Dict, List, Tuple, Set, Any, Optional
from collections import defaultdict

# 项目根目录
PROJECT_ROOT = Path(__file__).parent.parent
DATA_ROOT = PROJECT_ROOT / "图谱数据"

# ========== 命名规范定义 ==========

# 实体文件命名映射（小写/非标准 -> PascalCase）
ENTITY_NAME_MAPPING = {
    # 通用映射
    "coreliteracy": "CoreLiteracy",
    "academicquality": "AcademicQuality",
    "stage": "Stage",
    "theme": "Theme",
    "unit": "Unit",
    "topic": "Topic",
    "modules": "Module",
    "teachingactivitie": "TeachingActivity",
    "kp": "KeyPoint",
    # 拼写修复
    "coursemoudle": "CourseModule",
    # 组合词规范化
    "chaptermiddle": "ChapterMiddle",
    "chapterprimary": "ChapterPrimary",
    "sectionmiddle": "SectionMiddle",
    "sectionprimary": "SectionPrimary",
}

# 学科目录命名映射（旧名 -> 新名）
DIR_NAME_MAPPING = {
    "高中数学-with-books": "高中数学-v1",
    "高中物理-with-books-v2": "高中物理-v2",
    "高中化学_with-books-v2": "高中化学-v2",
    "高中生物-with-books": "高中生物-v1",
    "高中政治-with-books-v2": "高中政治-v2",
    "高中地理-with-books-v3": "高中地理-v3",
    "高中历史-with-books": "高中历史-v1",
    "高中英语-with-books-v2": "高中英语-v2",
    "高中语文": "高中语文-v1",
    "义教数学_1231-with-books": "义教数学-v1",
    "义务物理（8、9全一册）-with-books-v2": "义教物理89全册-v2",
    "义务物理（8上下、9全一册）-with-books-v2": "义教物理8上下9全册-v2",
    "义教化学-with-books": "义教化学-v1",
    "义教生物-with-books-v2": "义教生物-v2",
    "义教地理-with-books-v3": "义教地理-v3",
    "义教道法-with-books": "义教道法-v1",
    "义教历史-with-books": "义教历史-v1",
    "义教语文": "义教语文-v1",
}

# identifier类型部分的标准化映射
IDENTIFIER_TYPE_MAPPING = {
    "theme": "Theme",
    "stage": "Stage",
    "coreliteracy": "CoreLiteracy",
    "academicquality": "AcademicQuality",
    "subsection": "Subsection",
    "chaptermiddle": "ChapterMiddle",
    "chapterprimary": "ChapterPrimary",
    "sectionmiddle": "SectionMiddle",
    "sectionprimary": "SectionPrimary",
}


class DataNormalizer:
    """数据规范化工具"""
    
    def __init__(self, data_root: Path = DATA_ROOT, dry_run: bool = False):
        self.data_root = data_root
        self.dry_run = dry_run
        self.issues: Dict[str, List[Dict]] = defaultdict(list)
        self.fixes: List[Dict] = []
        # 日志文件存放在 logs/ 目录
        logs_dir = PROJECT_ROOT / "logs"
        logs_dir.mkdir(exist_ok=True)
        self.log_file = logs_dir / f"migration_log_{datetime.now().strftime('%Y%m%d_%H%M%S')}.txt"
        
    def log(self, message: str):
        """记录日志"""
        print(message)
        if not self.dry_run:
            with open(self.log_file, 'a', encoding='utf-8') as f:
                f.write(f"{datetime.now().isoformat()} - {message}\n")
    
    def get_subject_dirs(self, subject: Optional[str] = None) -> List[Path]:
        """获取学科目录列表"""
        dirs = []
        for item in self.data_root.iterdir():
            if item.is_dir() and item.name != "导出数据":
                if subject is None or subject in item.name:
                    dirs.append(item)
        return sorted(dirs)
    
    # ========== 检查功能 ==========
    
    def check_entity_file_names(self, subject_dir: Path) -> List[Dict]:
        """检查实体文件命名问题"""
        issues = []
        entities_dir = subject_dir / "entities"
        if not entities_dir.exists():
            entities_dir = subject_dir / "实体"
        
        if not entities_dir.exists():
            return issues
        
        for json_file in entities_dir.glob("*.json"):
            filename = json_file.stem.lower()
            # 检查是否需要修复
            if filename in ENTITY_NAME_MAPPING:
                expected = ENTITY_NAME_MAPPING[filename]
                if json_file.stem != expected:
                    issues.append({
                        "type": "entity_filename",
                        "file": str(json_file),
                        "current": json_file.name,
                        "expected": f"{expected}.json",
                        "subject": subject_dir.name,
                    })
            # 检查是否全小写
            elif json_file.stem.islower() and len(json_file.stem) > 2:
                expected = json_file.stem.title()
                issues.append({
                    "type": "entity_filename_case",
                    "file": str(json_file),
                    "current": json_file.name,
                    "expected": f"{expected}.json",
                    "subject": subject_dir.name,
                })
        
        return issues
    
    def check_identifier_case(self, subject_dir: Path) -> List[Dict]:
        """检查identifier大小写问题"""
        issues = []
        
        # 收集实体的identifier
        entity_identifiers: Set[str] = set()
        entities_dir = subject_dir / "entities"
        if not entities_dir.exists():
            entities_dir = subject_dir / "实体"
        
        if entities_dir.exists():
            for json_file in entities_dir.glob("*.json"):
                try:
                    with open(json_file, 'r', encoding='utf-8') as f:
                        data = json.load(f)
                    
                    entities = data if isinstance(data, list) else data.get('entities', [])
                    for entity in entities:
                        if 'identifier' in entity:
                            entity_identifiers.add(entity['identifier'])
                except Exception:
                    pass
        
        # 检查关系文件中的identifier引用
        relations_dir = subject_dir / "relations"
        if not relations_dir.exists():
            relations_dir = subject_dir / "relation"
        if not relations_dir.exists():
            relations_dir = subject_dir / "关系"
        
        if relations_dir.exists():
            for json_file in relations_dir.glob("*.json"):
                try:
                    with open(json_file, 'r', encoding='utf-8') as f:
                        data = json.load(f)
                    
                    relations = data if isinstance(data, list) else data.get('relations', data.get('relation', data.get('relationships', [])))
                    
                    for i, rel in enumerate(relations):
                        for key in ['source', 'target']:
                            if key in rel:
                                ref_id = rel[key]
                                # 检查是否在实体中找不到
                                if ref_id not in entity_identifiers:
                                    # 尝试大小写变体
                                    for eid in entity_identifiers:
                                        if eid.lower() == ref_id.lower():
                                            issues.append({
                                                "type": "identifier_case_mismatch",
                                                "file": str(json_file),
                                                "line": i,
                                                "position": key,
                                                "current": ref_id,
                                                "expected": eid,
                                                "subject": subject_dir.name,
                                            })
                                            break
                except Exception:
                    pass
        
        return issues
    
    def check_dir_names(self) -> List[Dict]:
        """检查学科目录命名问题"""
        issues = []
        for item in self.data_root.iterdir():
            if item.is_dir() and item.name in DIR_NAME_MAPPING:
                issues.append({
                    "type": "dir_name",
                    "current": item.name,
                    "expected": DIR_NAME_MAPPING[item.name],
                    "path": str(item),
                })
        return issues
    
    def check_json_type_field(self, subject_dir: Path) -> List[Dict]:
        """检查JSON中type字段与文件名是否一致"""
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
                
                entities = data if isinstance(data, list) else data.get('entities', [])
                expected_type = json_file.stem
                
                for i, entity in enumerate(entities):
                    if 'type' in entity:
                        entity_type = entity['type']
                        if entity_type != expected_type:
                            issues.append({
                                "type": "type_field_mismatch",
                                "file": str(json_file),
                                "index": i,
                                "current_type": entity_type,
                                "expected_type": expected_type,
                                "subject": subject_dir.name,
                            })
            except Exception:
                pass
        
        return issues
    
    def check_all(self, subject: Optional[str] = None) -> Dict[str, List[Dict]]:
        """执行所有检查"""
        self.issues = defaultdict(list)
        
        # 检查目录命名
        if subject is None:
            self.issues["dir_name"] = self.check_dir_names()
        
        # 检查各学科
        for subject_dir in self.get_subject_dirs(subject):
            self.issues["entity_filename"].extend(self.check_entity_file_names(subject_dir))
            self.issues["identifier_case"].extend(self.check_identifier_case(subject_dir))
            self.issues["type_field"].extend(self.check_json_type_field(subject_dir))
        
        return self.issues
    
    def print_report(self):
        """打印检查报告"""
        total = sum(len(issues) for issues in self.issues.values())
        
        print("\n" + "=" * 70)
        print("数据规范化检查报告")
        print("=" * 70)
        
        if self.issues["dir_name"]:
            print(f"\n【目录命名问题】({len(self.issues['dir_name'])} 个)")
            print("-" * 50)
            for issue in self.issues["dir_name"]:
                print(f"  {issue['current']}")
                print(f"    → {issue['expected']}")
        
        if self.issues["entity_filename"]:
            print(f"\n【实体文件命名问题】({len(self.issues['entity_filename'])} 个)")
            print("-" * 50)
            by_subject = defaultdict(list)
            for issue in self.issues["entity_filename"]:
                by_subject[issue['subject']].append(issue)
            for subj, issues in by_subject.items():
                print(f"  [{subj}]")
                for issue in issues:
                    print(f"    {issue['current']} → {issue['expected']}")
        
        if self.issues["identifier_case"]:
            print(f"\n【identifier大小写问题】({len(self.issues['identifier_case'])} 个)")
            print("-" * 50)
            by_subject = defaultdict(list)
            for issue in self.issues["identifier_case"]:
                by_subject[issue['subject']].append(issue)
            for subj, issues in by_subject.items():
                print(f"  [{subj}] {len(issues)} 个不匹配")
                # 只显示前5个示例
                for issue in issues[:5]:
                    print(f"    {issue['current']}")
                    print(f"      → {issue['expected']}")
                if len(issues) > 5:
                    print(f"    ... 还有 {len(issues) - 5} 个")
        
        if self.issues["type_field"]:
            print(f"\n【type字段不匹配】({len(self.issues['type_field'])} 个)")
            print("-" * 50)
            by_subject = defaultdict(list)
            for issue in self.issues["type_field"]:
                by_subject[issue['subject']].append(issue)
            for subj, issues in by_subject.items():
                print(f"  [{subj}] {len(issues)} 个")
        
        print("\n" + "=" * 70)
        print(f"总计: {total} 个问题")
        print("=" * 70)
        
        return total
    
    # ========== 修复功能 ==========
    
    def backup_data(self):
        """备份数据目录"""
        timestamp = datetime.now().strftime('%Y%m%d_%H%M%S')
        backup_dir = PROJECT_ROOT / f"图谱数据.backup.{timestamp}"
        
        if self.dry_run:
            self.log(f"[DRY-RUN] 将备份数据到: {backup_dir}")
            return backup_dir
        
        self.log(f"备份数据到: {backup_dir}")
        shutil.copytree(self.data_root, backup_dir)
        return backup_dir
    
    def fix_entity_file_names(self, subject: Optional[str] = None):
        """修复实体文件命名"""
        self.log("\n--- 修复实体文件命名 ---")
        
        for subject_dir in self.get_subject_dirs(subject):
            entities_dir = subject_dir / "entities"
            if not entities_dir.exists():
                entities_dir = subject_dir / "实体"
            
            if not entities_dir.exists():
                continue
            
            for json_file in entities_dir.glob("*.json"):
                filename_lower = json_file.stem.lower()
                
                # 检查是否需要重命名
                new_name = None
                if filename_lower in ENTITY_NAME_MAPPING:
                    expected = ENTITY_NAME_MAPPING[filename_lower]
                    if json_file.stem != expected:
                        new_name = expected
                
                if new_name:
                    new_path = json_file.parent / f"{new_name}.json"
                    
                    if self.dry_run:
                        self.log(f"[DRY-RUN] 重命名: {json_file.name} → {new_name}.json")
                    else:
                        self.log(f"重命名: {json_file.name} → {new_name}.json")
                        json_file.rename(new_path)
                        
                        # 同时更新文件内的type字段
                        self._update_type_field(new_path, new_name)
                    
                    self.fixes.append({
                        "action": "rename_file",
                        "from": str(json_file),
                        "to": str(new_path),
                    })
    
    def _update_type_field(self, json_path: Path, new_type: str):
        """更新JSON文件中的type字段"""
        try:
            with open(json_path, 'r', encoding='utf-8') as f:
                data = json.load(f)
            
            modified = False
            if isinstance(data, list):
                for entity in data:
                    if 'type' in entity and entity['type'].lower() != new_type.lower():
                        entity['type'] = new_type
                        modified = True
            elif isinstance(data, dict) and 'entities' in data:
                for entity in data['entities']:
                    if 'type' in entity and entity['type'].lower() != new_type.lower():
                        entity['type'] = new_type
                        modified = True
            
            if modified:
                with open(json_path, 'w', encoding='utf-8') as f:
                    json.dump(data, f, ensure_ascii=False, indent=2)
                self.log(f"  更新type字段: {json_path.name}")
        except Exception as e:
            self.log(f"  警告: 无法更新type字段 {json_path}: {e}")
    
    def fix_identifier_case(self, subject: Optional[str] = None):
        """修复identifier大小写问题"""
        self.log("\n--- 修复identifier大小写 ---")
        
        for subject_dir in self.get_subject_dirs(subject):
            # 收集实体identifier（用于建立映射）
            entity_id_map: Dict[str, str] = {}  # lower -> actual
            entities_dir = subject_dir / "entities"
            if not entities_dir.exists():
                entities_dir = subject_dir / "实体"
            
            if entities_dir.exists():
                for json_file in entities_dir.glob("*.json"):
                    try:
                        with open(json_file, 'r', encoding='utf-8') as f:
                            data = json.load(f)
                        
                        entities = data if isinstance(data, list) else data.get('entities', [])
                        for entity in entities:
                            if 'identifier' in entity:
                                eid = entity['identifier']
                                entity_id_map[eid.lower()] = eid
                    except Exception:
                        pass
            
            # 修复关系文件
            relations_dir = subject_dir / "relations"
            if not relations_dir.exists():
                relations_dir = subject_dir / "relation"
            if not relations_dir.exists():
                relations_dir = subject_dir / "关系"
            
            if not relations_dir.exists():
                continue
            
            for json_file in relations_dir.glob("*.json"):
                try:
                    with open(json_file, 'r', encoding='utf-8') as f:
                        data = json.load(f)
                    
                    modified = False
                    is_list = isinstance(data, list)
                    relations = data if is_list else data.get('relations', data.get('relation', data.get('relationships', [])))
                    
                    for rel in relations:
                        for key in ['source', 'target']:
                            if key in rel:
                                ref_id = rel[key]
                                ref_lower = ref_id.lower()
                                if ref_lower in entity_id_map and entity_id_map[ref_lower] != ref_id:
                                    correct_id = entity_id_map[ref_lower]
                                    rel[key] = correct_id
                                    modified = True
                                    self.fixes.append({
                                        "action": "fix_identifier",
                                        "file": str(json_file),
                                        "from": ref_id,
                                        "to": correct_id,
                                    })
                    
                    if modified:
                        if self.dry_run:
                            self.log(f"[DRY-RUN] 修复identifier: {json_file.name}")
                        else:
                            # 重新组装数据
                            if is_list:
                                output = relations
                            else:
                                key_name = 'relations' if 'relations' in data else ('relation' if 'relation' in data else 'relationships')
                                data[key_name] = relations
                                output = data
                            
                            with open(json_file, 'w', encoding='utf-8') as f:
                                json.dump(output, f, ensure_ascii=False, indent=2)
                            self.log(f"修复identifier: {json_file.name}")
                
                except Exception as e:
                    self.log(f"警告: 处理 {json_file} 失败: {e}")
    
    def fix_dir_names(self):
        """修复学科目录命名"""
        self.log("\n--- 修复学科目录命名 ---")
        
        for item in sorted(self.data_root.iterdir()):
            if item.is_dir() and item.name in DIR_NAME_MAPPING:
                new_name = DIR_NAME_MAPPING[item.name]
                new_path = item.parent / new_name
                
                if self.dry_run:
                    self.log(f"[DRY-RUN] 重命名目录: {item.name} → {new_name}")
                else:
                    self.log(f"重命名目录: {item.name} → {new_name}")
                    item.rename(new_path)
                
                self.fixes.append({
                    "action": "rename_dir",
                    "from": str(item),
                    "to": str(new_path),
                })
    
    def fix_type_fields(self, subject: Optional[str] = None):
        """修复JSON文件中的type字段，使其与文件名一致"""
        self.log("\n--- 修复type字段 ---")
        
        for subject_dir in self.get_subject_dirs(subject):
            entities_dir = subject_dir / "entities"
            if not entities_dir.exists():
                entities_dir = subject_dir / "实体"
            
            if not entities_dir.exists():
                continue
            
            for json_file in entities_dir.glob("*.json"):
                try:
                    with open(json_file, 'r', encoding='utf-8') as f:
                        data = json.load(f)
                    
                    is_list = isinstance(data, list)
                    entities = data if is_list else data.get('entities', [])
                    expected_type = json_file.stem
                    
                    modified = False
                    fix_count = 0
                    
                    for entity in entities:
                        if 'type' in entity and entity['type'] != expected_type:
                            old_type = entity['type']
                            entity['type'] = expected_type
                            modified = True
                            fix_count += 1
                    
                    if modified:
                        if self.dry_run:
                            self.log(f"[DRY-RUN] {subject_dir.name}/{json_file.name}: {fix_count} 个type字段")
                        else:
                            # 重新组装数据
                            if is_list:
                                output = entities
                            else:
                                data['entities'] = entities
                                output = data
                            
                            with open(json_file, 'w', encoding='utf-8') as f:
                                json.dump(output, f, ensure_ascii=False, indent=2)
                            self.log(f"修复 {subject_dir.name}/{json_file.name}: {fix_count} 个type字段")
                        
                        self.fixes.append({
                            "action": "fix_type_field",
                            "file": str(json_file),
                            "count": fix_count,
                        })
                
                except Exception as e:
                    self.log(f"警告: 处理 {json_file} 失败: {e}")
    
    def fix_all(self, subject: Optional[str] = None, backup: bool = True, fix_types: bool = True):
        """执行所有修复"""
        self.fixes = []
        
        if backup and not self.dry_run:
            self.backup_data()
        
        # 按顺序修复
        self.fix_entity_file_names(subject)
        self.fix_identifier_case(subject)
        
        # 修复type字段
        if fix_types:
            self.fix_type_fields(subject)
        
        if subject is None:
            self.fix_dir_names()
        
        # 打印修复摘要
        print("\n" + "=" * 70)
        print("修复摘要")
        print("=" * 70)
        
        action_counts = defaultdict(int)
        for fix in self.fixes:
            action_counts[fix['action']] += 1
        
        for action, count in action_counts.items():
            print(f"  {action}: {count} 次")
        
        print(f"\n总计: {len(self.fixes)} 个修复操作")
        
        if self.dry_run:
            print("\n[DRY-RUN 模式] 以上操作未实际执行")
        else:
            print(f"\n日志已保存到: {self.log_file}")
        
        print("=" * 70)
        
        return self.fixes


def main():
    parser = argparse.ArgumentParser(
        description="数据规范化工具",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="""
示例:
  python scripts/data_normalizer.py --check              # 检查所有问题
  python scripts/data_normalizer.py --check --subject 义教道法  # 检查指定学科
  python scripts/data_normalizer.py --fix --dry-run     # 预览修复操作
  python scripts/data_normalizer.py --fix               # 执行修复
  python scripts/data_normalizer.py --fix --no-backup   # 执行修复（不备份）
        """
    )
    
    group = parser.add_mutually_exclusive_group(required=True)
    group.add_argument('--check', action='store_true', help='检查模式，只报告问题')
    group.add_argument('--fix', action='store_true', help='修复模式，自动修复问题')
    
    parser.add_argument('--dry-run', action='store_true', help='预览修复操作，不实际执行')
    parser.add_argument('--subject', type=str, help='指定学科（目录名的部分匹配）')
    parser.add_argument('--no-backup', action='store_true', help='不进行备份（慎用）')
    
    args = parser.parse_args()
    
    normalizer = DataNormalizer(dry_run=args.dry_run)
    
    if args.check:
        normalizer.check_all(args.subject)
        normalizer.print_report()
    elif args.fix:
        # 先检查
        normalizer.check_all(args.subject)
        total = normalizer.print_report()
        
        if total == 0:
            print("\n没有需要修复的问题！")
            return
        
        if not args.dry_run:
            print(f"\n即将修复 {total} 个问题...")
            confirm = input("确认执行？(y/N): ")
            if confirm.lower() != 'y':
                print("已取消")
                return
        
        normalizer.fix_all(args.subject, backup=not args.no_backup)


if __name__ == '__main__':
    main()
