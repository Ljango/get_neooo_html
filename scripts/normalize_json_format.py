# -*- coding: utf-8 -*-
"""
JSON文件格式规范化脚本

功能：
1. 统一实体文件格式为数组格式：[{...}]
2. 统一关系文件格式为数组格式：[{...}]
3. 移除对象包装（如 {"entities": [...]} 或 {"relations": [...]}）

使用方法：
    python scripts/normalize_json_format.py --check
    python scripts/normalize_json_format.py --fix
"""

import json
import sys
import argparse
from pathlib import Path

PROJECT_ROOT = Path(__file__).parent.parent
DATA_ROOT = PROJECT_ROOT / "图谱数据"


class JsonNormalizer:
    def __init__(self, dry_run=True):
        self.dry_run = dry_run
        self.issues = []
        self.fixes = []

    def log_issue(self, issue_type, path, message):
        self.issues.append({"type": issue_type, "path": str(path), "message": message})
        print(f"  [问题] {issue_type}: {message}")
        print(f"         路径: {path}")

    def log_fix(self, fix_type, path):
        self.fixes.append({"type": fix_type, "path": str(path)})
        print(f"  [修复] {fix_type}: {path}")

    def normalize_json_file(self, file_path, file_type):
        """规范化单个JSON文件"""
        try:
            with open(file_path, 'r', encoding='utf-8') as f:
                data = json.load(f)
        except json.JSONDecodeError as e:
            self.log_issue("JSON解析错误", file_path, str(e))
            return
        except Exception as e:
            self.log_issue("文件读取错误", file_path, str(e))
            return

        # 检查格式
        normalized_data = None
        issue_found = False

        if isinstance(data, dict):
            # 检查是否是对象包装格式
            if file_type == "entity":
                if "entities" in data:
                    normalized_data = data["entities"]
                    self.log_issue("对象包装", file_path, "实体文件使用了 {entities: [...]} 格式")
                    issue_found = True
                elif len(data) == 1:
                    # 可能是其他键名的包装
                    key = list(data.keys())[0]
                    if isinstance(data[key], list):
                        normalized_data = data[key]
                        self.log_issue("对象包装", file_path, f"实体文件使用了 {{{key}: [...]}} 格式")
                        issue_found = True
            elif file_type == "relation":
                if "relations" in data:
                    normalized_data = data["relations"]
                    self.log_issue("对象包装", file_path, "关系文件使用了 {relations: [...]} 格式")
                    issue_found = True
                elif len(data) == 1:
                    key = list(data.keys())[0]
                    if isinstance(data[key], list):
                        normalized_data = data[key]
                        self.log_issue("对象包装", file_path, f"关系文件使用了 {{{key}: [...]}} 格式")
                        issue_found = True

        elif isinstance(data, list):
            # 已经是数组格式，检查是否为空
            if len(data) == 0:
                self.log_issue("空数组", file_path, "文件内容为空数组")
            # 格式正确，无需处理
            return
        else:
            self.log_issue("未知格式", file_path, f"文件格式未知: {type(data).__name__}")
            return

        # 执行修复
        if issue_found and normalized_data is not None and not self.dry_run:
            try:
                with open(file_path, 'w', encoding='utf-8') as f:
                    json.dump(normalized_data, f, ensure_ascii=False, indent=2)
                self.log_fix("格式转换", file_path)
            except Exception as e:
                print(f"  [错误] 写入失败: {e}")

    def normalize_entities(self):
        """规范化所有实体文件"""
        print("\n=== 检查实体文件格式 ===")
        
        for subject_dir in sorted(DATA_ROOT.iterdir()):
            if not subject_dir.is_dir() or subject_dir.name.startswith('.'):
                continue
            
            entities_dir = subject_dir / "entities"
            if not entities_dir.exists():
                continue
            
            for json_file in sorted(entities_dir.glob("*.json")):
                self.normalize_json_file(json_file, "entity")

    def normalize_relations(self):
        """规范化所有关系文件"""
        print("\n=== 检查关系文件格式 ===")
        
        for subject_dir in sorted(DATA_ROOT.iterdir()):
            if not subject_dir.is_dir() or subject_dir.name.startswith('.'):
                continue
            
            relations_dir = subject_dir / "relations"
            if not relations_dir.exists():
                continue
            
            for json_file in sorted(relations_dir.glob("*.json")):
                self.normalize_json_file(json_file, "relation")

    def generate_report(self):
        print("\n" + "=" * 60)
        print("JSON格式规范化报告")
        print("=" * 60)
        print(f"\n发现问题: {len(self.issues)} 个")
        if self.issues:
            by_type = {}
            for issue in self.issues:
                t = issue["type"]
                by_type[t] = by_type.get(t, 0) + 1
            for issue_type, count in by_type.items():
                print(f"  - {issue_type}: {count} 个")

        if self.dry_run:
            print(f"\n执行修复: 0 个 (检查模式)")
            print("\n要执行修复，请使用 --fix 参数运行")
        else:
            print(f"\n执行修复: {len(self.fixes)} 个")
        return len(self.issues), len(self.fixes)

    def run(self):
        print("=" * 60)
        print("JSON文件格式规范化工具")
        print("=" * 60)
        print(f"数据目录: {DATA_ROOT}")
        print(f"模式: {'检查模式' if self.dry_run else '修复模式'}")

        self.normalize_entities()
        self.normalize_relations()
        return self.generate_report()


def main():
    parser = argparse.ArgumentParser(description='JSON文件格式规范化工具')
    parser.add_argument('--check', action='store_true', help='仅检查，不修改')
    parser.add_argument('--fix', action='store_true', help='执行修复')
    args = parser.parse_args()

    normalizer = JsonNormalizer(dry_run=not args.fix)
    issues, fixes = normalizer.run()
    sys.exit(1 if issues > 0 and not args.fix else 0)


if __name__ == "__main__":
    main()
