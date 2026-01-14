#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
教材目录构建与JSON拆分脚本 V2

新的目录结构：
学科 -> 学段 -> 版本 -> 册次.json

学段顺序：小学, 初中, 小学（五•四学制）, 初中（五•四学制）, 高中
"""

import json
import os
import shutil
from pathlib import Path
from collections import defaultdict

# 基础路径
BASE_DIR = Path(__file__).parent
OUTPUT_DIR = BASE_DIR / "教材目录"
SOURCE_DIR = OUTPUT_DIR / "源数据" / "output_all_clean"

# 源文件（按顺序）
SOURCE_FILES = [
    SOURCE_DIR / "小学.json",
    SOURCE_DIR / "初中.json",
    SOURCE_DIR / "小学(五-四学制).json",
    SOURCE_DIR / "初中(五-四学制).json",
    SOURCE_DIR / "高中.json",
]

# 学段映射（文件名到显示名称）
XUEDUAN_MAPPING = {
    "小学": "小学",
    "初中": "初中",
    "小学（五•四学制）": "小学（五•四学制）",
    "初中（五•四学制）": "初中（五•四学制）",
    "高中": "高中",
}

# 学段排序顺序
XUEDUAN_ORDER = ["小学", "初中", "小学（五•四学制）", "初中（五•四学制）", "高中"]


def sanitize_filename(name: str) -> str:
    """清理文件名，移除或替换不合法的字符"""
    if not name:
        return "未分类"
    # 替换不能用于文件名的字符
    invalid_chars = ['/', '\\', ':', '*', '?', '"', '<', '>', '|']
    result = name
    for char in invalid_chars:
        result = result.replace(char, '_')
    # 去除首尾空格
    result = result.strip()
    return result if result else "未分类"


def clean_old_data():
    """清理旧的生成数据，保留源数据文件夹"""
    print("清理旧数据...")
    
    if not OUTPUT_DIR.exists():
        print("  - 目录不存在，无需清理")
        return
    
    deleted_count = 0
    for item in OUTPUT_DIR.iterdir():
        # 保留源数据文件夹
        if item.name == "源数据":
            print(f"  - 保留: {item.name}/")
            continue
        
        if item.is_dir():
            shutil.rmtree(item)
            print(f"  - 删除目录: {item.name}/")
            deleted_count += 1
        else:
            item.unlink()
            print(f"  - 删除文件: {item.name}")
            deleted_count += 1
    
    print(f"  - 共清理 {deleted_count} 项")


def load_textbooks() -> list:
    """加载所有教材数据"""
    all_textbooks = []
    
    for source_file in SOURCE_FILES:
        if source_file.exists():
            print(f"加载: {source_file.name}")
            with open(source_file, 'r', encoding='utf-8') as f:
                data = json.load(f)
                all_textbooks.extend(data)
                print(f"  - 共 {len(data)} 条记录")
        else:
            print(f"警告: 文件不存在 - {source_file}")
    
    return all_textbooks


def analyze_data(textbooks: list) -> dict:
    """分析数据，统计各维度的值"""
    stats = {
        'xueduan': defaultdict(int),
        'banben': defaultdict(int),
        'xueke': defaultdict(int),
        'ceci': defaultdict(int),
    }
    
    for tb in textbooks:
        for key in stats:
            value = tb.get(key, '未知')
            stats[key][value] += 1
    
    return stats


def print_stats(stats: dict):
    """打印统计信息"""
    print("\n" + "=" * 60)
    print("数据统计")
    print("=" * 60)
    
    for key, values in stats.items():
        print(f"\n【{key}】共 {len(values)} 种:")
        for value, count in sorted(values.items(), key=lambda x: -x[1])[:15]:
            print(f"  - {value}: {count}")
        if len(values) > 15:
            print(f"  ... 还有 {len(values) - 15} 种")


def build_directory_structure(textbooks: list):
    """
    构建目录结构并拆分JSON文件
    
    新结构: 学科 -> 学段 -> 版本 -> 册次.json
    """
    print("\n" + "=" * 60)
    print("开始构建目录结构")
    print("结构: 学科 -> 学段 -> 版本 -> 册次.json")
    print("=" * 60)
    
    # 统计
    created_dirs = set()
    created_files = 0
    
    # 按 学科/学段/版本 分组
    grouped = defaultdict(list)
    
    for tb in textbooks:
        xueke = sanitize_filename(tb.get('xueke', '未知学科'))
        xueduan = sanitize_filename(tb.get('xueduan', '未知学段'))
        banben = sanitize_filename(tb.get('banben', '未知版本'))
        ceci = sanitize_filename(tb.get('ceci', '未知册次'))
        nianji = tb.get('nianji', '')  # 年级信息保留在文件名中（如果需要区分）
        
        key = (xueke, xueduan, banben)
        grouped[key].append((ceci, nianji, tb))
    
    # 创建目录和文件
    for (xueke, xueduan, banben), items in grouped.items():
        # 构建目录路径: 教材目录/学科/学段/版本/
        dir_path = OUTPUT_DIR / xueke / xueduan / banben
        
        # 创建目录
        if dir_path not in created_dirs:
            dir_path.mkdir(parents=True, exist_ok=True)
            created_dirs.add(dir_path)
        
        # 处理同一目录下可能有多个册次的情况
        ceci_count = defaultdict(int)
        
        for ceci, nianji, tb in items:
            # 构建文件名
            # 如果有年级信息且同册次有多本，添加年级区分
            ceci_count[ceci] += 1
            
            if ceci_count[ceci] > 1:
                # 如果有年级信息，用年级区分；否则用序号
                if nianji:
                    filename = f"{ceci}_{nianji}.json"
                else:
                    filename = f"{ceci}_{ceci_count[ceci]}.json"
            else:
                filename = f"{ceci}.json"
            
            file_path = dir_path / filename
            
            # 如果文件已存在（可能是相同册次+年级），添加序号
            counter = 2
            original_filename = filename
            while file_path.exists():
                name_part = original_filename.rsplit('.', 1)[0]
                filename = f"{name_part}_{counter}.json"
                file_path = dir_path / filename
                counter += 1
            
            # 写入JSON文件
            with open(file_path, 'w', encoding='utf-8') as f:
                json.dump(tb, f, ensure_ascii=False, indent=2)
            
            created_files += 1
    
    print(f"\n完成!")
    print(f"  - 创建目录: {len(created_dirs)} 个")
    print(f"  - 创建文件: {created_files} 个")
    
    return created_dirs, created_files


def generate_summary(textbooks: list):
    """生成目录汇总文件"""
    summary_path = OUTPUT_DIR / "_目录汇总.json"
    
    # 构建汇总结构：学科 -> 学段 -> 版本 -> [册次列表]
    summary = {
        'total_count': len(textbooks),
        'directory_structure': "学科 -> 学段 -> 版本 -> 册次.json",
        'xueduan_order': XUEDUAN_ORDER,
        'structure': {}
    }
    
    for tb in textbooks:
        xueke = tb.get('xueke', '未知学科')
        xueduan = tb.get('xueduan', '未知学段')
        banben = tb.get('banben', '未知版本')
        ceci = tb.get('ceci', '未知册次')
        nianji = tb.get('nianji', '')
        
        # 构建嵌套结构
        if xueke not in summary['structure']:
            summary['structure'][xueke] = {}
        if xueduan not in summary['structure'][xueke]:
            summary['structure'][xueke][xueduan] = {}
        if banben not in summary['structure'][xueke][xueduan]:
            summary['structure'][xueke][xueduan][banben] = []
        
        # 添加册次（带年级信息）
        entry = ceci if not nianji else f"{ceci}（{nianji}）"
        if entry not in summary['structure'][xueke][xueduan][banben]:
            summary['structure'][xueke][xueduan][banben].append(entry)
    
    # 对每个版本下的册次进行排序
    for xueke in summary['structure']:
        for xueduan in summary['structure'][xueke]:
            for banben in summary['structure'][xueke][xueduan]:
                summary['structure'][xueke][xueduan][banben].sort()
    
    with open(summary_path, 'w', encoding='utf-8') as f:
        json.dump(summary, f, ensure_ascii=False, indent=2)
    
    print(f"\n已生成目录汇总: {summary_path}")


def generate_index_by_subject(textbooks: list):
    """为每个学科生成索引文件"""
    print("\n生成学科索引文件...")
    
    # 按学科分组
    by_subject = defaultdict(list)
    for tb in textbooks:
        xueke = sanitize_filename(tb.get('xueke', '未知学科'))
        by_subject[xueke].append({
            'title': tb.get('title', ''),
            'xueduan': tb.get('xueduan', ''),
            'banben': tb.get('banben', ''),
            'nianji': tb.get('nianji', ''),
            'ceci': tb.get('ceci', ''),
        })
    
    # 为每个学科生成索引
    for xueke, items in by_subject.items():
        index_path = OUTPUT_DIR / xueke / "_索引.json"
        index_data = {
            'subject': xueke,
            'count': len(items),
            'textbooks': sorted(items, key=lambda x: (
                XUEDUAN_ORDER.index(x['xueduan']) if x['xueduan'] in XUEDUAN_ORDER else 999,
                x['banben'],
                x['nianji'],
                x['ceci']
            ))
        }
        
        with open(index_path, 'w', encoding='utf-8') as f:
            json.dump(index_data, f, ensure_ascii=False, indent=2)
    
    print(f"  - 生成 {len(by_subject)} 个学科索引文件")


def main():
    print("=" * 60)
    print("教材目录构建与JSON拆分工具 V2")
    print("目录结构: 学科 -> 学段 -> 版本 -> 册次.json")
    print("=" * 60)
    
    # 0. 清理旧数据
    print("\n[0/5] 清理旧数据...")
    clean_old_data()
    
    # 1. 加载数据
    print("\n[1/5] 加载教材数据...")
    textbooks = load_textbooks()
    print(f"总计加载 {len(textbooks)} 条教材记录")
    
    # 2. 分析数据
    print("\n[2/5] 分析数据结构...")
    stats = analyze_data(textbooks)
    print_stats(stats)
    
    # 3. 构建目录并拆分文件
    print("\n[3/5] 构建目录结构并拆分文件...")
    build_directory_structure(textbooks)
    
    # 4. 生成汇总
    print("\n[4/5] 生成目录汇总...")
    generate_summary(textbooks)
    
    # 5. 生成学科索引
    print("\n[5/5] 生成学科索引...")
    generate_index_by_subject(textbooks)
    
    print("\n" + "=" * 60)
    print("全部完成!")
    print("=" * 60)


if __name__ == "__main__":
    main()
