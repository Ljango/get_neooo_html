#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
统一配置文件
集中管理所有项目配置，避免重复定义
"""

from pathlib import Path

# ========== 路径配置 ==========
PROJECT_ROOT = Path(__file__).parent.parent
DATA_ROOT = PROJECT_ROOT / "图谱数据"
STATIC_ROOT = PROJECT_ROOT / "static"
TEMPLATE_ROOT = PROJECT_ROOT / "templates"
INDEX_FILE = STATIC_ROOT / "index.html"

# ========== 实体类型配置 ==========
ENTITY_TYPE_CONFIG = {
    # 通用实体类型
    "CourseModule": {"label": "课程模块", "color": "#e74c3c", "size": 24},
    "CourseTarget": {"label": "课程目标", "color": "#16a085", "size": 16},
    "CourseStructure": {"label": "课程结构", "color": "#e67e22", "size": 22},
    "AcademicQuality": {"label": "学业质量", "color": "#1abc9c", "size": 14},
    "CoreLiteracy": {"label": "核心素养", "color": "#16a085", "size": 14},
    
    # 高中数学
    "Theme": {"label": "主题", "color": "#e67e22", "size": 20},
    "Topic": {"label": "主题内容", "color": "#f39c12", "size": 18},
    "Domain": {"label": "领域", "color": "#9b59b6", "size": 18},
    "Unit": {"label": "单元", "color": "#3498db", "size": 16},
    "KeyPoint": {"label": "知识点", "color": "#2ecc71", "size": 14},
    
    # 物理（义教/高中）
    "ThemeL1": {"label": "一级主题", "color": "#e67e22", "size": 22},
    "ThemeL2": {"label": "二级主题", "color": "#f39c12", "size": 18},
    "ThemeL3": {"label": "三级主题", "color": "#f1c40f", "size": 16},
    "Experiments": {"label": "实验", "color": "#3498db", "size": 14},
    "Experiment": {"label": "实验", "color": "#3498db", "size": 14},
    "ExampleProblem": {"label": "示例问题", "color": "#9b59b6", "size": 14},
    "Example": {"label": "示例", "color": "#9b59b6", "size": 14},
    "ActivitySuggestion": {"label": "活动建议", "color": "#e74c3c", "size": 14},
    
    # 化学（义教/高中）
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
    
    # 义教数学
    "CoreLiteracyAspect": {"label": "核心素养方面", "color": "#16a085", "size": 16},
    "CoreLiteracyPerformance": {"label": "核心素养表现", "color": "#1abc9c", "size": 14},
    "CourseGoal": {"label": "课程目标", "color": "#16a085", "size": 16},
    "LearningDomain": {"label": "学习领域", "color": "#9b59b6", "size": 18},
    "Stage": {"label": "学段", "color": "#e67e22", "size": 20},
    "Problems": {"label": "问题", "color": "#e74c3c", "size": 14},
    
    # 高中化学（旧配置兼容）
    "CourseMoudle": {"label": "课程模块", "color": "#e74c3c", "size": 24},
    "CourseSeries": {"label": "课程系列", "color": "#9b59b6", "size": 20},
    "CourseType": {"label": "课程类型", "color": "#8e44ad", "size": 22},
    
    # 生物（义教/高中）
    "Module": {"label": "模块", "color": "#27ae60", "size": 18},
    "SubConception": {"label": "子概念", "color": "#5dade2", "size": 14},
    
    # 教材相关
    "Chapter": {"label": "章", "color": "#ff7675", "size": 16},
    "Section": {"label": "节", "color": "#74b9ff", "size": 14},
    "SubSection": {"label": "小节", "color": "#a29bfe", "size": 12},
    
    # 英语课程
    "CourseContent": {"label": "课程内容", "color": "#e67e22", "size": 20},
    "LanguageSkills": {"label": "语言技能", "color": "#3498db", "size": 18},
    "LinguisticKnowledge": {"label": "语言知识", "color": "#2ecc71", "size": 16},
    "CulturalKnowledge": {"label": "文化知识", "color": "#f39c12", "size": 16},
    "LearningStrategy": {"label": "学习策略", "color": "#9b59b6", "size": 14},
    "Discourse": {"label": "语篇类型", "color": "#1abc9c", "size": 14},
    "GoalPoint": {"label": "目标要点", "color": "#e74c3c", "size": 14},
}

# ========== 学科配置 ==========
# neo4j_label: 导入Neo4j时的学科分类标签（用于区分不同学科的数据）
SUBJECT_CONFIG = {
    # 高中学科
    "高中数学": {
        "icon": "📐",
        "display_name": "高中数学",
        "data_dir": "高中数学-with-books",
        "files": ["高中数学_课标.html", "高中数学_人教B版_v2.html"],
        "color": "#2ecc71",
        "neo4j_label": "GaoZhongShuXue"  # 高中数学
    },
    "高中物理": {
        "icon": "⚛️",
        "display_name": "高中物理",
        "data_dir": "高中物理-with-books",
        "files": ["高中物理_课标.html"],
        "color": "#3498db",
        "neo4j_label": "GaoZhongWuLi"  # 高中物理
    },
    "高中化学": {
        "icon": "⚗️",
        "display_name": "高中化学",
        "data_dir": "高中化学-with-books",
        "files": ["高中化学_课标.html"],
        "color": "#8e44ad",
        "neo4j_label": "GaoZhongHuaXue"  # 高中化学
    },
    "高中生物": {
        "icon": "🧬",
        "display_name": "高中生物",
        "data_dir": "高中生物-with-books",
        "files": ["高中生物_课标.html"],
        "color": "#27ae60",
        "neo4j_label": "GaoZhongShengWu"  # 高中生物
    },
    "高中政治": {
        "icon": "🏛️",
        "display_name": "高中政治",
        "data_dir": "高中政治-with-books-v2",
        "files": ["高中政治_课标.html"],
        "color": "#c0392b",
        "neo4j_label": "GaoZhongZhengZhi"  # 高中政治
    },
    "高中地理": {
        "icon": "🗺️",
        "display_name": "高中地理",
        "data_dir": "高中地理-with-books-v3",
        "files": ["高中地理_课标.html"],
        "color": "#3498db",
        "neo4j_label": "GaoZhongDiLi"  # 高中地理
    },
    # 义教学科
    "义教数学": {
        "icon": "📐",
        "display_name": "义教数学",
        "data_dir": "义教数学_1231-with-books",
        "files": ["义教数学_课标.html"],
        "color": "#f39c12",
        "neo4j_label": "YiJiaoShuXue"  # 义教数学
    },
    "义教物理": {
        "icon": "⚡",
        "display_name": "义教物理",
        "data_dir": "义务物理-with-books",
        "files": ["义教物理_课标.html", "义教物理_89全一册.html"],
        "color": "#e74c3c",
        "neo4j_label": "YiJiaoWuLi"  # 义教物理
    },
    "义教化学": {
        "icon": "🧪",
        "display_name": "义教化学",
        "data_dir": "义教化学-with-books",
        "files": ["义教化学_课标.html"],
        "color": "#9b59b6",
        "neo4j_label": "YiJiaoHuaXue"  # 义教化学
    },
    "义教地理": {
        "icon": "🌍",
        "display_name": "义教地理",
        "data_dir": "义教地理-with-books-v3",
        "files": ["义教地理_课标.html"],
        "color": "#1abc9c",
        "neo4j_label": "YiJiaoDiLi"  # 义教地理
    },
    "初中地理": {
        "icon": "🗺️",
        "display_name": "初中地理",
        "data_dir": "初中地理-with-books",
        "files": ["初中地理_课标.html"],
        "color": "#16a085",
        "neo4j_label": "ChuZhongDiLi"  # 初中地理
    },
    "义教生物": {
        "icon": "🌱",
        "display_name": "义教生物",
        "data_dir": "义教生物-with-books-v2",
        "files": ["义教生物_课标.html"],
        "color": "#16a085",
        "neo4j_label": "YiJiaoShengWu"  # 义教生物
    },
    "义教道法": {
        "icon": "⚖️",
        "display_name": "义教道法",
        "data_dir": "义教道法-with-books",
        "files": ["义教道法_课标.html"],
        "color": "#d63031",
        "neo4j_label": "YiJiaoDaoFa"  # 义教道德与法治
    },
    "义教历史": {
        "icon": "📜",
        "display_name": "义教历史",
        "data_dir": "义教历史-with-books",
        "files": ["义教历史_课标.html"],
        "color": "#8e44ad",
        "neo4j_label": "YiJiaoLiShi"  # 义教历史
    },
    "高中历史": {
        "icon": "🏛️",
        "display_name": "高中历史",
        "data_dir": "高中历史-with-books",
        "files": ["高中历史_课标.html"],
        "color": "#6c5ce7",
        "neo4j_label": "GaoZhongLiShi"  # 高中历史
    },
    "高中英语": {
        "icon": "🔤",
        "display_name": "高中英语",
        "data_dir": "高中英语",
        "files": ["高中英语_课标.html"],
        "color": "#e84393",
        "neo4j_label": "GaoZhongYingYu"  # 高中英语
    }
}

# ========== 服务器配置 ==========
DEFAULT_PORT = 8888
DEFAULT_HOST = '0.0.0.0'
