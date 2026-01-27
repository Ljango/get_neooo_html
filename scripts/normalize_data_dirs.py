# -*- coding: utf-8 -*-
"""
数据目录规范化脚本

功能：
1. 统一版本号格式（_v -> -v）
2. 修复目录名拼写错误（entitles -> entities）
3. 清理系统文件（.DS_Store）
4. 修复文件名拼写错误

使用方法：
    python scripts/normalize_data_dirs.py --check
    python scripts/normalize_data_dirs.py --fix
"""

import os
import re
import sys
import shutil
import argparse
from pathlib import Path

PROJECT_ROOT = Path(__file__).parent.parent
DATA_ROOT = PROJECT_ROOT / "图谱数据"

SPELLING_FIXES = {
    "entitles": "entities",
    "CourseMoudle": "CourseModule",
    "Promblem": "Problem",
}

SYSTEM_FILES = [".DS_Store", "Thumbs.db", "._.DS_Store"]


class DataNormalizer:
    def __init__(self, dry_run=True):
        self.dry_run = dry_run
        self.issues = []
        self.fixes = []

    def log_issue(self, issue_type, path, message):
        self.issues.append({"type": issue_type, "path": str(path), "message": message})
        print(f"  [问题] {issue_type}: {message}")
        print(f"         路径: {path}")

    def log_fix(self, fix_type, old_path, new_path=None):
        self.fixes.append({"type": fix_type, "old": str(old_path), "new": str(new_path) if new_path else None})
        if new_path:
            print(f"  [修复] {fix_type}: {old_path} -> {new_path}")
        else:
            print(f"  [修复] {fix_type}: {old_path}")

    def check_version_format(self, dir_name):
        return bool(re.search(r'_v\d+$', dir_name))

    def fix_version_format(self, dir_name):
        return re.sub(r'_v(\d+)$', r'-v\1', dir_name)

    def normalize_directory_names(self):
        print("\n=== 检查目录名称 ===")
        if not DATA_ROOT.exists():
            print(f"错误: 数据目录不存在: {DATA_ROOT}")
            return

        for item in sorted(DATA_ROOT.iterdir()):
            if not item.is_dir():
                continue
            dir_name = item.name
            if self.check_version_format(dir_name):
                new_name = self.fix_version_format(dir_name)
                self.log_issue("版本号格式", item, f"使用了下划线格式: {dir_name}")
                if not self.dry_run:
                    new_path = item.parent / new_name
                    if not new_path.exists():
                        shutil.move(str(item), str(new_path))
                        self.log_fix("重命名目录", item, new_path)

    def normalize_subdirectory_names(self):
        print("\n=== 检查子目录名称 ===")
        for subject_dir in sorted(DATA_ROOT.iterdir()):
            if not subject_dir.is_dir() or subject_dir.name.startswith('.'):
                continue
            for subdir in subject_dir.iterdir():
                if not subdir.is_dir():
                    continue
                for wrong, correct in SPELLING_FIXES.items():
                    if wrong in subdir.name:
                        self.log_issue("拼写错误", subdir, f"'{wrong}' 应为 '{correct}'")
                        if not self.dry_run:
                            new_path = subdir.parent / subdir.name.replace(wrong, correct)
                            if not new_path.exists():
                                shutil.move(str(subdir), str(new_path))
                                self.log_fix("修复拼写", subdir, new_path)

    def normalize_file_names(self):
        print("\n=== 检查文件名 ===")
        for subject_dir in sorted(DATA_ROOT.iterdir()):
            if not subject_dir.is_dir() or subject_dir.name.startswith('.'):
                continue
            for subdir in subject_dir.iterdir():
                if not subdir.is_dir():
                    continue
                for file_path in list(subdir.glob("*.json*")):
                    file_name = file_path.name
                    new_name = file_name
                    need_rename = False

                    for wrong, correct in SPELLING_FIXES.items():
                        if wrong in file_name:
                            new_name = new_name.replace(wrong, correct)
                            self.log_issue("文件名拼写错误", file_path, f"'{wrong}' 应为 '{correct}'")
                            need_rename = True

                    if '.json.json' in file_name:
                        new_name = new_name.replace('.json.json', '.json')
                        self.log_issue("双重扩展名", file_path, "文件名包含 .json.json")
                        need_rename = True

                    if ' .json' in file_name:
                        new_name = new_name.replace(' .json', '.json')
                        self.log_issue("文件名空格", file_path, "文件名包含末尾空格")
                        need_rename = True

                    if need_rename and not self.dry_run:
                        new_path = file_path.parent / new_name
                        if not new_path.exists():
                            shutil.move(str(file_path), str(new_path))
                            self.log_fix("重命名文件", file_path, new_path)

    def clean_system_files(self):
        print("\n=== 清理系统文件 ===")
        for root, dirs, files in os.walk(DATA_ROOT):
            for file_name in files:
                if file_name in SYSTEM_FILES:
                    file_path = Path(root) / file_name
                    self.log_issue("系统文件", file_path, f"发现系统文件: {file_name}")
                    if not self.dry_run:
                        os.remove(file_path)
                        self.log_fix("删除文件", file_path)

    def generate_report(self):
        print("\n" + "=" * 60)
        print("规范化报告")
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
        print("数据目录规范化工具")
        print("=" * 60)
        print(f"数据目录: {DATA_ROOT}")
        print(f"模式: {'检查模式' if self.dry_run else '修复模式'}")

        self.normalize_directory_names()
        self.normalize_subdirectory_names()
        self.normalize_file_names()
        self.clean_system_files()
        return self.generate_report()


def main():
    parser = argparse.ArgumentParser(description='数据目录规范化工具')
    parser.add_argument('--check', action='store_true', help='仅检查，不修改')
    parser.add_argument('--fix', action='store_true', help='执行修复')
    args = parser.parse_args()

    normalizer = DataNormalizer(dry_run=not args.fix)
    issues, fixes = normalizer.run()
    sys.exit(1 if issues > 0 and not args.fix else 0)


if __name__ == "__main__":
    main()
