#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
统一配置文件
集中管理所有项目配置，避免重复定义
支持自动检测最新版本的数据目录
"""

import re
from pathlib import Path

# ========== 路径配置 ==========
PROJECT_ROOT = Path(__file__).parent.parent
DATA_ROOT = PROJECT_ROOT / "图谱数据"
STATIC_ROOT = PROJECT_ROOT / "static"
TEMPLATE_ROOT = PROJECT_ROOT / "templates"
INDEX_FILE = STATIC_ROOT / "index.html"


# ========== 自动版本检测 ==========
def find_latest_data_dir(subject_pattern: str) -> str:
    """
    自动查找指定学科的最新版本数据目录
    
    Args:
        subject_pattern: 学科名称模式，如 "高中物理", "义教生物"
    
    Returns:
        最新版本的目录名，如 "高中物理-v3"
    """
    if not DATA_ROOT.exists():
        return f"{subject_pattern}-v1"
    
    # 匹配模式：学科名称 + 分隔符(-或_) + v(可选) + 版本号
    # 例如：高中物理-v3, 义教生物_v4, 义教物理89全册-v3
    pattern = re.compile(rf'^{re.escape(subject_pattern)}[-_]v?(\d+)/?$')
    
    matches = []
    for dir_path in DATA_ROOT.iterdir():
        if dir_path.is_dir():
            match = pattern.match(dir_path.name)
            if match:
                version = int(match.group(1))
                matches.append((version, dir_path.name))
    
    if not matches:
        # 如果没找到匹配的，返回默认值
        return f"{subject_pattern}-v1"
    
    # 按版本号降序排序，返回最高版本
    matches.sort(key=lambda x: x[0], reverse=True)
    return matches[0][1]


def get_subject_data_dir(subject_name: str, base_config: dict) -> str:
    """
    获取学科的数据目录，优先使用自动检测
    
    Args:
        subject_name: 学科名称
        base_config: 基础配置
    
    Returns:
        数据目录名
    """
    # 直接使用学科名称作为搜索模式
    return find_latest_data_dir(subject_name)

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

# ========== 实体类型排序配置 ==========
# 用于审核页面类型下拉框的排序，数字越小越靠前
ENTITY_TYPE_ORDER = {
    # 课程结构（最高优先级）
    "CourseModule": 1,
    "CourseMoudle": 1,  # 兼容拼写
    "CourseStructure": 2,
    "CourseSeries": 3,
    "CourseType": 4,
    "CourseTarget": 5,
    "CourseGoal": 5,
    "CourseContent": 6,
    
    # 主题/领域结构
    "Theme": 10,
    "ThemeL1": 10,
    "Domain": 11,
    "LearningDomain": 11,
    "ThemeL2": 12,
    "LearningTheme": 12,
    "LearningThemeL1": 12,
    "ThemeL3": 13,
    "LearningThemeL2": 13,
    "Topic": 14,
    "LearningThemeL3": 14,
    
    # 教材结构
    "Module": 20,
    "Stage": 21,
    "Chapter": 22,
    "Unit": 23,
    "Section": 24,
    "SubSection": 25,
    
    # 知识点/概念
    "KeyPoint": 30,
    "CoreKnowledge": 31,
    "Conception": 32,
    "SubConception": 33,
    
    # 核心素养/学业质量
    "CoreLiteracy": 40,
    "CoreLiteracyAspect": 41,
    "CoreLiteracyPerformance": 42,
    "AcademicQuality": 43,
    
    # 其他内容类型
    "Experiment": 50,
    "Experiments": 50,
    "Example": 51,
    "ExampleProblem": 51,
    "Problems": 52,
    "ActivitySuggestion": 53,
    "Method": 54,
    "Attitude": 55,
    "Interdisciplinary": 56,
    
    # 英语特有
    "LanguageSkills": 60,
    "LinguisticKnowledge": 61,
    "CulturalKnowledge": 62,
    "LearningStrategy": 63,
    "Discourse": 64,
    "GoalPoint": 65,
    
    # 默认排序值（未列出的类型）
    "_default": 100
}


# ========== 学科分类配置 ==========
# 定义学科大类的图标和主色（用于index.html分组显示）
SUBJECT_CATEGORIES = {
    "语文": {"icon": "📖", "color": "#ff6b6b"},
    "数学": {"icon": "📐", "color": "#2ecc71"},
    "英语": {"icon": "🔤", "color": "#e84393"},
    "物理": {"icon": "⚡", "color": "#3498db"},
    "化学": {"icon": "⚗️", "color": "#8e44ad"},
    "生物": {"icon": "🧬", "color": "#27ae60"},
    "政治": {"icon": "🏛️", "color": "#c0392b"},
    "历史": {"icon": "📜", "color": "#6c5ce7"},
    "地理": {"icon": "🌍", "color": "#1abc9c"},
}

# ========== 学科基础配置 ==========
# 定义学科的固定属性（不包括data_dir，data_dir会自动检测最新版本）
# category: 学科大类，用于index.html分组
# level: 学段，highschool=高中, yijiao=义教
_SUBJECT_BASE_CONFIG = {
    # ===== 高中学科 =====
    "高中语文": {
        "icon": "📖",
        "display_name": "高中语文",
        "files": ["高中语文_课标.html"],
        "color": "#ff6b6b",
        "neo4j_label": "GaoZhongYuWen",
        "category": "语文",
        "level": "highschool"
    },
    "高中数学": {
        "icon": "📐",
        "display_name": "高中数学",
        "files": ["高中数学_课标.html", "高中数学_人教B版_v2.html"],
        "color": "#2ecc71",
        "neo4j_label": "GaoZhongShuXue",
        "category": "数学",
        "level": "highschool"
    },
    "高中英语": {
        "icon": "🔤",
        "display_name": "高中英语",
        "files": ["高中英语_课标.html"],
        "color": "#e84393",
        "neo4j_label": "GaoZhongYingYu",
        "category": "英语",
        "level": "highschool"
    },
    "高中物理": {
        "icon": "⚛️",
        "display_name": "高中物理",
        "files": ["高中物理_课标.html"],
        "color": "#3498db",
        "neo4j_label": "GaoZhongWuLi",
        "category": "物理",
        "level": "highschool"
    },
    "高中化学": {
        "icon": "⚗️",
        "display_name": "高中化学",
        "files": ["高中化学_课标.html"],
        "color": "#8e44ad",
        "neo4j_label": "GaoZhongHuaXue",
        "category": "化学",
        "level": "highschool"
    },
    "高中生物": {
        "icon": "🧬",
        "display_name": "高中生物",
        "files": ["高中生物_课标.html"],
        "color": "#27ae60",
        "neo4j_label": "GaoZhongShengWu",
        "category": "生物",
        "level": "highschool"
    },
    "高中政治": {
        "icon": "🏛️",
        "display_name": "高中政治",
        "files": ["高中政治_课标.html"],
        "color": "#c0392b",
        "neo4j_label": "GaoZhongZhengZhi",
        "category": "政治",
        "level": "highschool"
    },
    "高中历史": {
        "icon": "🏛️",
        "display_name": "高中历史",
        "files": ["高中历史_课标.html"],
        "color": "#6c5ce7",
        "neo4j_label": "GaoZhongLiShi",
        "category": "历史",
        "level": "highschool"
    },
    "高中地理": {
        "icon": "🗺️",
        "display_name": "高中地理",
        "files": ["高中地理_课标.html"],
        "color": "#3498db",
        "neo4j_label": "GaoZhongDiLi",
        "category": "地理",
        "level": "highschool"
    },
    # ===== 义教学科 =====
    "义教语文": {
        "icon": "📚",
        "display_name": "义教语文",
        "files": ["义教语文_课标.html"],
        "color": "#ff7675",
        "neo4j_label": "YiJiaoYuWen",
        "category": "语文",
        "level": "yijiao"
    },
    "义教数学": {
        "icon": "📐",
        "display_name": "义教数学",
        "files": ["义教数学_课标.html"],
        "color": "#f39c12",
        "neo4j_label": "YiJiaoShuXue",
        "category": "数学",
        "level": "yijiao"
    },
    "义务英语": {
        "icon": "🔤",
        "display_name": "义务英语",
        "files": ["义务英语_课标.html"],
        "color": "#00b894",
        "neo4j_label": "YiWuYingYu",
        "category": "英语",
        "level": "yijiao"
    },
    "义教物理89全册": {
        "icon": "⚡",
        "display_name": "义教物理（8、9全一册）",
        "files": ["义教物理_89全一册.html"],
        "color": "#e74c3c",
        "neo4j_label": "YiJiaoWuLi89",
        "category": "物理",
        "level": "yijiao"
    },
    "义教物理8上下9全册": {
        "icon": "⚡",
        "display_name": "义教物理（8上下、9全一册）",
        "files": ["义教物理_课标.html"],
        "color": "#e74c3c",
        "neo4j_label": "YiJiaoWuLi",
        "category": "物理",
        "level": "yijiao"
    },
    "义教化学": {
        "icon": "🧪",
        "display_name": "义教化学",
        "files": ["义教化学_课标.html"],
        "color": "#9b59b6",
        "neo4j_label": "YiJiaoHuaXue",
        "category": "化学",
        "level": "yijiao"
    },
    "义教生物": {
        "icon": "🌱",
        "display_name": "义教生物",
        "files": ["义教生物_课标.html"],
        "color": "#16a085",
        "neo4j_label": "YiJiaoShengWu",
        "category": "生物",
        "level": "yijiao"
    },
    "义教道法": {
        "icon": "⚖️",
        "display_name": "义教道法",
        "files": ["义教道法_课标.html"],
        "color": "#d63031",
        "neo4j_label": "YiJiaoDaoFa",
        "category": "政治",
        "level": "yijiao"
    },
    "义教历史": {
        "icon": "📜",
        "display_name": "义教历史",
        "files": ["义教历史_课标.html"],
        "color": "#8e44ad",
        "neo4j_label": "YiJiaoLiShi",
        "category": "历史",
        "level": "yijiao"
    },
    "义教地理": {
        "icon": "🌍",
        "display_name": "义教地理",
        "files": ["义教地理_课标.html"],
        "color": "#1abc9c",
        "neo4j_label": "YiJiaoDiLi",
        "category": "地理",
        "level": "yijiao"
    },
}


def build_subject_grouping():
    """
    从 _SUBJECT_BASE_CONFIG 自动构建学科分组配置
    用于 update_index.py 生成 index.html
    
    Returns:
        dict: 学科分组配置，格式如 {"数学": {"icon": "📐", "highschool": [...], "yijiao": [...]}}
    """
    grouping = {}
    
    for subject_name, cfg in _SUBJECT_BASE_CONFIG.items():
        category = cfg.get('category')
        level = cfg.get('level')
        
        if not category or not level:
            continue
        
        if category not in grouping:
            cat_cfg = SUBJECT_CATEGORIES.get(category, {})
            grouping[category] = {
                "icon": cat_cfg.get("icon", "📚"),
                "color": cat_cfg.get("color", "#666"),
                "highschool": [],
                "yijiao": []
            }
        
        # 添加到对应学段
        grouping[category][level].append((subject_name, cfg.get('color', '#666')))
    
    return grouping


# 导出学科分组配置（供 update_index.py 使用）
SUBJECT_GROUPING = build_subject_grouping()


def build_subject_config():
    """
    构建学科配置，自动检测最新版本的数据目录
    """
    config = {}
    for subject_name, base_config in _SUBJECT_BASE_CONFIG.items():
        # 复制基础配置
        subject_config = base_config.copy()
        # 自动检测数据目录
        subject_config['data_dir'] = get_subject_data_dir(subject_name, base_config)
        config[subject_name] = subject_config
    return config


def refresh_subject_config():
    """
    刷新学科配置，重新检测数据目录
    用于在运行时更新配置（如新增数据目录后）
    """
    global SUBJECT_CONFIG
    SUBJECT_CONFIG = build_subject_config()
    return SUBJECT_CONFIG


def list_available_subjects():
    """
    列出所有可用的学科及其数据目录
    """
    result = []
    for name, config in SUBJECT_CONFIG.items():
        dir_path = DATA_ROOT / config['data_dir']
        entities_dir = dir_path / "entities"
        relations_dir = dir_path / "relations"
        
        entity_count = len(list(entities_dir.glob("*.json"))) if entities_dir.exists() else 0
        relation_count = len(list(relations_dir.glob("*.json"))) if relations_dir.exists() else 0
        
        result.append({
            "name": name,
            "display_name": config['display_name'],
            "data_dir": config['data_dir'],
            "exists": dir_path.exists(),
            "entity_files": entity_count,
            "relation_files": relation_count
        })
    return result


# ========== 学科配置（自动检测最新版本） ==========
# neo4j_label: 导入Neo4j时的学科分类标签（用于区分不同学科的数据）
SUBJECT_CONFIG = build_subject_config()

# ========== 服务器配置 ==========
DEFAULT_PORT = 8888
DEFAULT_HOST = '0.0.0.0'


# ========== 配置验证 ==========
def validate_config():
    """
    验证配置完整性
    
    Returns:
        (is_valid, errors) 元组
    """
    errors = []
    
    # 检查关键路径
    if not PROJECT_ROOT.exists():
        errors.append(f"项目根目录不存在: {PROJECT_ROOT}")
    
    if not DATA_ROOT.exists():
        errors.append(f"数据目录不存在: {DATA_ROOT}")
    
    # 检查学科配置
    for name, cfg in SUBJECT_CONFIG.items():
        required_keys = ['data_dir', 'display_name', 'icon']
        for key in required_keys:
            if key not in cfg:
                errors.append(f"学科 {name} 缺少必要配置: {key}")
        
        # 检查数据目录是否存在
        data_path = DATA_ROOT / cfg.get('data_dir', '')
        if not data_path.exists():
            errors.append(f"学科 {name} 的数据目录不存在: {data_path}")
    
    return (len(errors) == 0, errors)


def print_config_status():
    """打印配置状态（用于调试）"""
    print("=" * 60)
    print("配置状态")
    print("=" * 60)
    print(f"项目根目录: {PROJECT_ROOT} ({'存在' if PROJECT_ROOT.exists() else '不存在'})")
    print(f"数据目录: {DATA_ROOT} ({'存在' if DATA_ROOT.exists() else '不存在'})")
    print(f"学科数量: {len(SUBJECT_CONFIG)}")
    
    is_valid, errors = validate_config()
    if is_valid:
        print("配置验证: 通过")
    else:
        print("配置验证: 失败")
        for err in errors:
            print(f"  - {err}")
