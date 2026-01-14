#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
教材映射生成器
将教材目录(章/节/小节)映射到课标知识点(KeyPoint)
"""

import json
import os
from pathlib import Path
from typing import Dict, List, Optional, Tuple
import re

# 项目根目录
PROJECT_ROOT = Path(__file__).parent.parent
DATA_ROOT = PROJECT_ROOT / "图谱数据"
TEXTBOOK_ROOT = PROJECT_ROOT / "教材目录"


class TextbookMapper:
    """教材映射生成器"""
    
    def __init__(self, subject: str, textbook_path: str, book_id: str):
        """
        初始化
        
        Args:
            subject: 学科路径，如 "高中数学"
            textbook_path: 教材JSON路径，相对于 TEXTBOOK_ROOT
            book_id: 教材ID，用于生成实体标识符，如 "renjiao_B"
        """
        self.subject = subject
        self.textbook_path = TEXTBOOK_ROOT / textbook_path
        self.book_id = book_id
        self.output_dir = DATA_ROOT / subject / "books" / book_id
        
        # 加载知识点数据
        self.keypoints: Dict[str, dict] = {}
        self._load_keypoints()
        
        # 教材数据
        self.textbook_data: dict = {}
        
        # 生成的实体和关系
        self.entities: List[dict] = []
        self.relations: List[dict] = []
        
    def _load_keypoints(self):
        """加载课标知识点"""
        kp_path = DATA_ROOT / self.subject / "entities" / "KeyPoint.json"
        if kp_path.exists():
            with open(kp_path, 'r', encoding='utf-8') as f:
                data = json.load(f)
            for kp in data.get("entities", []):
                self.keypoints[kp["identifier"]] = kp
            print(f"📚 加载 {len(self.keypoints)} 个知识点")
    
    def load_textbook(self) -> 'TextbookMapper':
        """加载教材数据"""
        if not self.textbook_path.exists():
            raise FileNotFoundError(f"教材文件不存在: {self.textbook_path}")
        
        with open(self.textbook_path, 'r', encoding='utf-8') as f:
            self.textbook_data = json.load(f)
        
        print(f"📖 加载教材: {self.textbook_data.get('title', 'Unknown')}")
        return self
    
    def generate_mapping(self, mapping_rules: Optional[Dict[str, List[str]]] = None) -> 'TextbookMapper':
        """
        生成章节到知识点的映射
        
        Args:
            mapping_rules: 手动映射规则，格式为 {"章节标题": ["kp_id1", "kp_id2"]}
                          如果不提供，则使用自动匹配
        """
        if not self.textbook_data:
            raise ValueError("请先调用 load_textbook() 加载教材")
        
        book_title = self.textbook_data.get("title", "未知教材")
        chapters = self.textbook_data.get("chapters", [])
        
        print(f"🔄 生成映射: {len(chapters)} 章")
        
        # 章节计数器
        chapter_count = 0
        section_count = 0
        subsection_count = 0
        
        for chapter in chapters:
            chapter_count += 1
            chapter_id = f"urn:jy:textbook:{self.book_id}:chapter:ch{chapter_count:03d}"
            chapter_title = chapter.get("title", f"第{chapter_count}章")
            
            # 创建章实体
            self.entities.append({
                "identifier": chapter_id,
                "title": chapter_title,
                "type": "Chapter",
                "book": book_title,
                "bookId": self.book_id,
                "level": 1,
                "index": chapter.get("index", chapter_count)
            })
            
            # 匹配知识点
            matched_kps = self._match_keypoints(chapter_title, mapping_rules)
            for kp_id in matched_kps:
                self.relations.append({
                    "source": chapter_id,
                    "target": kp_id,
                    "relationName": "chapterMatchesKeyPointPrimary",
                    "label": "章节匹配知识点"
                })
            
            # 处理节
            section_idx = 0
            for child in chapter.get("children", []):
                if child.get("level") == 2:
                    section_idx += 1
                    section_count += 1
                    section_id = f"urn:jy:textbook:{self.book_id}:section:sec{section_count:03d}"
                    section_title = child.get("title", f"第{section_idx}节")
                    
                    # 创建节实体
                    self.entities.append({
                        "identifier": section_id,
                        "title": section_title,
                        "type": "Section",
                        "book": book_title,
                        "bookId": self.book_id,
                        "level": 2,
                        "index": child.get("index", section_idx),
                        "parentChapter": chapter_id
                    })
                    
                    # 章包含节
                    self.relations.append({
                        "source": chapter_id,
                        "target": section_id,
                        "relationName": "chapterContainsSection",
                        "label": "包含"
                    })
                    
                    # 匹配知识点
                    matched_kps = self._match_keypoints(section_title, mapping_rules)
                    for kp_id in matched_kps:
                        self.relations.append({
                            "source": section_id,
                            "target": kp_id,
                            "relationName": "sectionMatchesKeyPointPrimary",
                            "label": "节匹配知识点"
                        })
                    
                    # 处理小节
                    subsection_idx = 0
                    for subchild in child.get("children", []):
                        if subchild.get("level") == 3:
                            subsection_idx += 1
                            subsection_count += 1
                            subsection_id = f"urn:jy:textbook:{self.book_id}:subsection:ssec{subsection_count:03d}"
                            subsection_title = subchild.get("title", f"第{subsection_idx}小节")
                            
                            # 创建小节实体
                            self.entities.append({
                                "identifier": subsection_id,
                                "title": subsection_title,
                                "type": "SubSection",
                                "book": book_title,
                                "bookId": self.book_id,
                                "level": 3,
                                "index": subchild.get("index", subsection_idx),
                                "parentSection": section_id
                            })
                            
                            # 节包含小节
                            self.relations.append({
                                "source": section_id,
                                "target": subsection_id,
                                "relationName": "sectionContainsSubSection",
                                "label": "包含"
                            })
                            
                            # 匹配知识点
                            matched_kps = self._match_keypoints(subsection_title, mapping_rules)
                            for kp_id in matched_kps:
                                self.relations.append({
                                    "source": subsection_id,
                                    "target": kp_id,
                                    "relationName": "subSectionMatchesKeyPointPrimary",
                                    "label": "小节匹配知识点"
                                })
        
        print(f"   ✓ 生成 {chapter_count} 章, {section_count} 节, {subsection_count} 小节")
        print(f"   ✓ 共 {len(self.entities)} 个实体, {len(self.relations)} 条关系")
        
        return self
    
    def _match_keypoints(self, title: str, mapping_rules: Optional[Dict[str, List[str]]]) -> List[str]:
        """
        匹配章节标题到知识点
        
        Args:
            title: 章节标题
            mapping_rules: 手动映射规则
            
        Returns:
            匹配的知识点ID列表
        """
        # 优先使用手动映射
        if mapping_rules and title in mapping_rules:
            return [f"urn:jy:math:SB0201:OB06:KeyPoint:{kp_id}" 
                    if not kp_id.startswith("urn:") else kp_id 
                    for kp_id in mapping_rules[title]]
        
        # 自动匹配：基于关键词
        matched = []
        title_clean = self._clean_title(title)
        
        for kp_id, kp in self.keypoints.items():
            kp_title = kp.get("title", "")
            kp_clean = self._clean_title(kp_title)
            
            # 完全匹配或包含匹配
            if kp_clean and (kp_clean in title_clean or title_clean in kp_clean):
                matched.append(kp_id)
            # 关键词匹配
            elif self._keyword_match(title_clean, kp_clean):
                matched.append(kp_id)
        
        return matched[:3]  # 最多返回3个匹配
    
    def _clean_title(self, title: str) -> str:
        """清理标题，去除章节编号等"""
        # 去除章节编号
        cleaned = re.sub(r'^[\d.]+\s*', '', title)
        cleaned = re.sub(r'^第[一二三四五六七八九十\d]+[章节课]\s*', '', cleaned)
        cleaned = re.sub(r'^[一二三四五六七八九十]+[、.]\s*', '', cleaned)
        return cleaned.strip()
    
    def _keyword_match(self, title: str, kp_title: str) -> bool:
        """关键词匹配"""
        # 定义关键词映射
        keywords_map = {
            "集合": ["集合"],
            "函数": ["函数"],
            "不等式": ["不等式"],
            "等式": ["等式"],
            "命题": ["命题", "逻辑"],
            "量词": ["量词"],
            "充分": ["充分条件", "必要条件"],
            "必要": ["充分条件", "必要条件"],
            "单调": ["单调性"],
            "奇偶": ["奇偶性"],
            "一元二次": ["一元二次"],
            "均值": ["均值不等式", "基本不等式"],
        }
        
        for keyword, matches in keywords_map.items():
            if keyword in title:
                for match in matches:
                    if match in kp_title:
                        return True
        return False
    
    def save(self) -> Tuple[str, str]:
        """
        保存生成的数据
        
        Returns:
            (entities_path, relations_path)
        """
        self.output_dir.mkdir(parents=True, exist_ok=True)
        
        entities_path = self.output_dir / "entities.json"
        relations_path = self.output_dir / "relations.json"
        
        with open(entities_path, 'w', encoding='utf-8') as f:
            json.dump({"entities": self.entities}, f, ensure_ascii=False, indent=2)
        
        with open(relations_path, 'w', encoding='utf-8') as f:
            json.dump(self.relations, f, ensure_ascii=False, indent=2)
        
        print(f"✅ 已保存到 {self.output_dir}")
        return str(entities_path), str(relations_path)


def generate_renjiao_b():
    """生成人教B版必修第一册的映射"""
    
    # 手动定义映射规则（精确匹配）
    mapping_rules = {
        # 第一章 集合与常用逻辑用语
        "第一章 集合与常用逻辑用语": ["kp00001", "kp00004", "kp00005"],
        "1.1 集合": ["kp00001"],
        "1.1.1 集合及其表示方法": ["kp00001"],
        "1.1.2 集合的基本关系": ["kp00002"],
        "1.1.3 集合的基本运算": ["kp00003"],
        "1.2 常用逻辑用语": ["kp00004", "kp00005", "kp00006"],
        "1.2.1 命题与量词": ["kp00005"],
        "1.2.2 全称量词命题与存在量词命题的否定": ["kp00006"],
        "1.2.3 充分条件、必要条件": ["kp00004"],
        
        # 第二章 等式与不等式
        "第二章 等式与不等式": ["kp00007", "kp00008", "kp00009", "kp00010"],
        "2.1 等式": ["kp00007", "kp00009"],
        "2.1.1 等式的性质与方程的解集": ["kp00007"],
        "2.1.2 一元二次方程的解集及其根与系数的关系": ["kp00009"],
        "2.1.3 方程组的解集": ["kp00007"],
        "2.2 不等式": ["kp00007", "kp00008", "kp00010"],
        "2.2.1 不等式及其性质": ["kp00007"],
        "2.2.2 不等式的解集": ["kp00007"],
        "2.2.3 一元二次不等式的解法": ["kp00010"],
        "2.2.4 均值不等式及其应用": ["kp00008"],
        
        # 第三章 函数
        "第三章 函数": ["kp00011", "kp00012", "kp00022", "kp00023"],
        "3.1 函数的概念与性质": ["kp00011", "kp00012"],
        "3.1.1 函数及其表示方法": ["kp00011"],
        "3.1.2 函数的单调性": ["kp00012"],
        "3.1.3 函数的奇偶性": ["kp00012"],
        "3.2 函数与方程、不等式之间的关系": ["kp00022"],
        "3.3 函数的应用(一)": ["kp00023"],
        "3.4 数学建模活动:决定苹果的最佳出售时间点": ["kp00040"],
    }
    
    mapper = TextbookMapper(
        subject="高中数学",
        textbook_path="数学/高中/人教版（B版）（主编：高存明）/必修 第一册.json",
        book_id="renjiao_B"
    )
    
    mapper.load_textbook()
    mapper.generate_mapping(mapping_rules)
    mapper.save()
    
    return mapper


def main():
    """主函数"""
    print("\n" + "="*60)
    print("生成人教B版必修第一册教材映射")
    print("="*60)
    
    generate_renjiao_b()


if __name__ == "__main__":
    main()
