#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
自动扫描static目录中的HTML文件并更新index.html
"""

import re
import json
from pathlib import Path
from collections import defaultdict

from config import PROJECT_ROOT, STATIC_ROOT, INDEX_FILE, SUBJECT_CONFIG


# 文件到学科的映射
FILE_TO_SUBJECT = {}
for subject, config in SUBJECT_CONFIG.items():
    for file in config["files"]:
        FILE_TO_SUBJECT[file] = subject


def get_file_info(html_file: Path):
    """从HTML文件中提取信息"""
    try:
        content = html_file.read_text(encoding='utf-8')
        
        # 提取标题
        title_match = re.search(r'<title>(.*?)</title>', content)
        title = title_match.group(1) if title_match else html_file.stem
        
        # 提取描述
        desc_match = re.search(r'<meta name="description" content="(.*?)"', content)
        description = desc_match.group(1) if desc_match else "知识图谱可视化"
        
        # 提取实体和关系数量（通过JSON解析graphData）
        entity_count = 0
        relation_count = 0
        
        # 尝试找到 const graphData = {...}; 并解析JSON
        graph_match = re.search(r'const graphData = ({.*?});', content, re.DOTALL)
        if graph_match:
            try:
                graph_data = json.loads(graph_match.group(1))
                entity_count = len(graph_data.get('nodes', []))
                relation_count = len(graph_data.get('links', []))
            except json.JSONDecodeError:
                # JSON解析失败，使用备用方法
                pass
        
        # 如果JSON解析失败，尝试备用方法（统计"id":出现次数）
        if entity_count == 0:
            # 统计nodes数组中的对象数量（通过统计顶层"id":的出现次数）
            entity_match = re.search(r'"nodes":\s*\[([^\]]*(?:\{[^\}]*"id"[^\}]*\}[^\]]*)*)\]', content)
            if entity_match:
                entity_count = len(re.findall(r'\{"id":', entity_match.group(0)))
            
            relation_match = re.search(r'"links":\s*\[([^\]]*(?:\{[^\}]*"source"[^\}]*\}[^\]]*)*)\]', content)
            if relation_match:
                relation_count = len(re.findall(r'\{"source":', relation_match.group(0)))
        
        return {
            "title": title,
            "description": description,
            "entity_count": entity_count,
            "relation_count": relation_count
        }
    except Exception as e:
        print(f"⚠️  读取 {html_file.name} 时出错: {e}")
        return {
            "title": html_file.stem,
            "description": "知识图谱可视化",
            "entity_count": 0,
            "relation_count": 0
        }


def scan_static_files():
    """扫描static目录中的所有HTML文件"""
    html_files = list(STATIC_ROOT.glob("*.html"))
    html_files = [f for f in html_files if f.name != "index.html"]
    
    # 按学科分组
    subject_files = defaultdict(list)
    unknown_files = []
    
    for html_file in html_files:
        if html_file.name in FILE_TO_SUBJECT:
            subject = FILE_TO_SUBJECT[html_file.name]
            subject_files[subject].append(html_file)
        else:
            unknown_files.append(html_file)
    
    return subject_files, unknown_files


def generate_index_html(subject_files, unknown_files):
    """生成index.html内容 - 按学科分组，高中和义教并排显示"""
    
    # 学科映射配置（学科名 -> (高中配置, 义教配置)）
    SUBJECT_GROUPING = {
        "数学": {
            "icon": "📐",
            "highschool": ("高中数学", "#2ecc71"),
            "yijiao": ("义教数学", "#f39c12"),
            "color": "#2ecc71"
        },
        "物理": {
            "icon": "⚡",
            "highschool": ("高中物理", "#3498db"),
            "yijiao": ("义教物理", "#e74c3c"),
            "color": "#3498db"
        },
        "化学": {
            "icon": "⚗️",
            "highschool": ("高中化学", "#8e44ad"),
            "yijiao": ("义教化学", "#f39c12"),
            "color": "#8e44ad"
        },
        "生物": {
            "icon": "🧬",
            "highschool": ("高中生物", "#27ae60"),
            "yijiao": ("义教生物", "#16a085"),
            "color": "#27ae60"
        },
        "地理": {
            "icon": "🌍",
            "highschool": ("高中地理", "#3498db"),
            "yijiao": ("义教地理", "#1abc9c"),
            "chuzhong": ("初中地理", "#16a085"),  # 初中地理
            "color": "#1abc9c"
        },
        "政治": {
            "icon": "🏛️",
            "highschool": ("高中政治", "#c0392b"),
            "yijiao": ("义教道法", "#d63031"),
            "color": "#c0392b"
        },
        "历史": {
            "icon": "📜",
            "highschool": ("高中历史", "#6c5ce7"),
            "yijiao": ("义教历史", "#8e44ad"),
            "color": "#6c5ce7"
        }
    }
    
    html_parts = []
    
    # 头部
    html_parts.append("""<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>知识图谱 · 导航中心</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+SC:wght@300;400;500;700&display=swap');
        
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        body {
            font-family: 'Noto Sans SC', -apple-system, BlinkMacSystemFont, sans-serif;
            min-height: 100vh;
            background: linear-gradient(135deg, #0c0c1e 0%, #1a1a2e 50%, #16213e 100%);
            color: #e0e0e0;
            overflow-x: hidden;
        }
        
        /* 背景装饰 */
        .bg-decoration {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            pointer-events: none;
            z-index: -1;
        }
        
        .bg-circle {
            position: absolute;
            border-radius: 50%;
            background: radial-gradient(circle, rgba(52, 152, 219, 0.1) 0%, transparent 70%);
        }
        
        .bg-circle:nth-child(1) {
            width: 600px;
            height: 600px;
            top: -200px;
            right: -100px;
        }
        
        .bg-circle:nth-child(2) {
            width: 400px;
            height: 400px;
            bottom: -100px;
            left: -100px;
            background: radial-gradient(circle, rgba(46, 204, 113, 0.1) 0%, transparent 70%);
        }
        
        .bg-circle:nth-child(3) {
            width: 300px;
            height: 300px;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background: radial-gradient(circle, rgba(155, 89, 182, 0.08) 0%, transparent 70%);
        }
        
        /* 头部 */
        header {
            padding: 60px 40px 40px;
            text-align: center;
        }
        
        header h1 {
            font-size: 2.5rem;
            font-weight: 700;
            margin-bottom: 16px;
            background: linear-gradient(135deg, #fff 0%, #3498db 100%);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }
        
        header p {
            font-size: 1.1rem;
            color: #888;
            max-width: 600px;
            margin: 0 auto;
            line-height: 1.6;
        }
        
        /* 主内容 */
        main {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 40px 60px;
        }
        
        /* 学科分类 */
        .subject-section {
            margin-bottom: 48px;
        }
        
        .subject-header {
            display: flex;
            align-items: center;
            gap: 12px;
            margin-bottom: 24px;
            padding-bottom: 12px;
            border-bottom: 1px solid rgba(255, 255, 255, 0.1);
        }
        
        /* 学科分组布局 - 高中和义教并排 */
        .subject-group {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 24px;
            margin-bottom: 48px;
        }
        
        @media (max-width: 768px) {
            .subject-group {
                grid-template-columns: 1fr;
            }
        }
        
        .subject-column {
            background: rgba(255, 255, 255, 0.02);
            border-radius: 12px;
            padding: 20px;
            border: 1px solid rgba(255, 255, 255, 0.05);
        }
        
        .subject-column-header {
            display: flex;
            align-items: center;
            gap: 8px;
            margin-bottom: 16px;
            padding-bottom: 12px;
            border-bottom: 1px solid rgba(255, 255, 255, 0.1);
        }
        
        .subject-column-header .icon {
            font-size: 1.2rem;
        }
        
        .subject-column-header h3 {
            font-size: 1.1rem;
            font-weight: 500;
            color: #fff;
        }
        
        .subject-column-header .count {
            margin-left: auto;
            font-size: 0.75rem;
            color: #666;
            background: rgba(255, 255, 255, 0.05);
            padding: 2px 8px;
            border-radius: 8px;
        }
        
        .subject-header .icon {
            font-size: 1.5rem;
        }
        
        .subject-header h2 {
            font-size: 1.4rem;
            font-weight: 500;
            color: #fff;
        }
        
        .subject-header .count {
            margin-left: auto;
            font-size: 0.85rem;
            color: #666;
            background: rgba(255, 255, 255, 0.05);
            padding: 4px 12px;
            border-radius: 12px;
        }
        
        /* 图谱卡片网格 */
        .graph-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
            gap: 20px;
        }
        
        .graph-card {
            background: rgba(255, 255, 255, 0.03);
            border: 1px solid rgba(255, 255, 255, 0.08);
            border-radius: 16px;
            padding: 24px;
            text-decoration: none;
            color: inherit;
            transition: all 0.3s ease;
            position: relative;
            overflow: hidden;
        }
        
        .graph-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 3px;
            background: linear-gradient(90deg, var(--accent-color, #3498db), transparent);
            opacity: 0;
            transition: opacity 0.3s;
        }
        
        .graph-card:hover {
            background: rgba(255, 255, 255, 0.06);
            border-color: rgba(255, 255, 255, 0.15);
            transform: translateY(-4px);
            box-shadow: 0 12px 40px rgba(0, 0, 0, 0.3);
        }
        
        .graph-card:hover::before {
            opacity: 1;
        }
        
        .graph-card .type-badge {
            display: inline-block;
            font-size: 0.7rem;
            padding: 4px 10px;
            border-radius: 12px;
            margin-bottom: 12px;
            font-weight: 500;
        }
        
        .graph-card .type-badge.curriculum {
            background: rgba(46, 204, 113, 0.2);
            color: #2ecc71;
        }
        
        .graph-card .type-badge.textbook {
            background: rgba(52, 152, 219, 0.2);
            color: #3498db;
        }
        
        .graph-card .type-badge.mixed {
            background: rgba(155, 89, 182, 0.2);
            color: #9b59b6;
        }
        
        .graph-card h3 {
            font-size: 1.1rem;
            font-weight: 500;
            margin-bottom: 8px;
            color: #fff;
        }
        
        .graph-card .description {
            font-size: 0.85rem;
            color: #888;
            line-height: 1.5;
            margin-bottom: 16px;
        }
        
        .graph-card .stats {
            display: flex;
            gap: 16px;
            font-size: 0.8rem;
            color: #666;
        }
        
        .graph-card .stat-item {
            display: flex;
            align-items: center;
            gap: 4px;
        }
        
        .graph-card .arrow {
            position: absolute;
            bottom: 20px;
            right: 20px;
            font-size: 1.2rem;
            color: #444;
            transition: all 0.3s;
        }
        
        .graph-card:hover .arrow {
            color: #3498db;
            transform: translateX(4px);
        }
        
        /* 添加新图谱卡片 */
        .add-card {
            background: transparent;
            border: 2px dashed rgba(255, 255, 255, 0.1);
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            min-height: 180px;
            cursor: pointer;
        }
        
        .add-card:hover {
            border-color: rgba(52, 152, 219, 0.4);
            background: rgba(52, 152, 219, 0.05);
        }
        
        .add-card .plus {
            font-size: 2rem;
            color: #444;
            margin-bottom: 8px;
            transition: color 0.3s;
        }
        
        .add-card:hover .plus {
            color: #3498db;
        }
        
        .add-card span {
            color: #666;
            font-size: 0.9rem;
        }
        
        /* 底部 */
        footer {
            text-align: center;
            padding: 40px;
            color: #555;
            font-size: 0.85rem;
        }
        
        footer a {
            color: #3498db;
            text-decoration: none;
        }
        
        footer a:hover {
            text-decoration: underline;
        }
        
        /* 搜索栏 */
        .search-bar {
            max-width: 500px;
            margin: 32px auto;
            position: relative;
        }
        
        .search-bar input {
            width: 100%;
            padding: 14px 20px 14px 48px;
            background: rgba(255, 255, 255, 0.05);
            border: 1px solid rgba(255, 255, 255, 0.1);
            border-radius: 12px;
            color: #fff;
            font-size: 1rem;
            transition: all 0.3s;
        }
        
        .search-bar input:focus {
            outline: none;
            border-color: #3498db;
            background: rgba(255, 255, 255, 0.08);
        }
        
        .search-bar input::placeholder {
            color: #555;
        }
        
        .search-bar .search-icon {
            position: absolute;
            left: 16px;
            top: 50%;
            transform: translateY(-50%);
            color: #555;
            font-size: 1.1rem;
        }
    </style>
</head>
<body>
    <!-- 背景装饰 -->
    <div class="bg-decoration">
        <div class="bg-circle"></div>
        <div class="bg-circle"></div>
        <div class="bg-circle"></div>
    </div>
    
    <header>
        <h1>📚 知识图谱导航中心</h1>
        <p>探索课程标准与教材的知识关联，通过可视化图谱理解知识结构</p>
        
        <div class="search-bar">
            <span class="search-icon">🔍</span>
            <input type="text" id="search-input" placeholder="搜索图谱...">
        </div>
    </header>
    
    <main>""")
    
    # 使用统一的学科分组配置（与文件顶部的SUBJECT_GROUPING一致）
    
    def generate_subject_column(subject_key, subject_name, color, icon):
        """生成单个学科列（高中或义教）"""
        if subject_key not in subject_files:
            return ""
        
        files = subject_files[subject_key]
        config = SUBJECT_CONFIG.get(subject_key, {})
        display_name = config.get('display_name', subject_name)
        
        html = f"""
            <div class="subject-column">
                <div class="subject-column-header">
                    <span class="icon">{icon}</span>
                    <h3>{display_name}</h3>
                    <span class="count">{len(files)} 个</span>
                </div>
                <div class="graph-grid">"""
        
        for html_file in files:
            info = get_file_info(html_file)
            
            # 确定类型
            if "人教" in html_file.name or "教材" in html_file.name:
                badge_type = "mixed"
                badge_label = "课标+教材"
            elif "课标" in html_file.name:
                badge_type = "curriculum"
                badge_label = "课程标准"
            else:
                badge_type = "curriculum"
                badge_label = "图谱"
            
            # 生成标题
            title = info["title"].replace("知识图谱", "").replace("图谱", "").strip()
            if not title:
                title = html_file.stem.replace("_", " · ")
            
            html += f"""
                    <a href="{html_file.name}" class="graph-card" style="--accent-color: {color}">
                        <span class="type-badge {badge_type}">{badge_label}</span>
                        <h3>{title}</h3>
                        <p class="description">{info['description']}</p>
                        <div class="stats">
                            <span class="stat-item">📊 {info['entity_count']}个实体</span>
                            <span class="stat-item">🔗 {info['relation_count']}条关系</span>
                        </div>
                        <span class="arrow">→</span>
                    </a>"""
        
        html += """
                </div>
            </div>"""
        return html
    
    def generate_subject_column_merged(subject_key1, subject_key2, subject_name, color, icon, all_files):
        """生成合并的学科列（用于同时显示义教和初中）"""
        config1 = SUBJECT_CONFIG.get(subject_key1, {})
        config2 = SUBJECT_CONFIG.get(subject_key2, {})
        display_name = subject_name
        
        html = f"""
            <div class="subject-column">
                <div class="subject-column-header">
                    <span class="icon">{icon}</span>
                    <h3>{display_name}</h3>
                    <span class="count">{len(all_files)} 个</span>
                </div>
                <div class="graph-grid">"""
        
        for html_file in all_files:
            info = get_file_info(html_file)
            
            # 确定类型和颜色
            if subject_key1 in html_file.name:
                file_color = config1.get('color', color)
            elif subject_key2 in html_file.name:
                file_color = config2.get('color', color)
            else:
                file_color = color
            
            # 确定类型
            if "人教" in html_file.name or "教材" in html_file.name:
                badge_type = "mixed"
                badge_label = "课标+教材"
            elif "课标" in html_file.name:
                badge_type = "curriculum"
                badge_label = "课程标准"
            else:
                badge_type = "curriculum"
                badge_label = "图谱"
            
            # 生成标题
            title = info["title"].replace("知识图谱", "").replace("图谱", "").strip()
            if not title:
                title = html_file.stem.replace("_", " · ")
            
            html += f"""
                    <a href="{html_file.name}" class="graph-card" style="--accent-color: {file_color}">
                        <span class="type-badge {badge_type}">{badge_label}</span>
                        <h3>{title}</h3>
                        <p class="description">{info['description']}</p>
                        <div class="stats">
                            <span class="stat-item">📊 {info['entity_count']}个实体</span>
                            <span class="stat-item">🔗 {info['relation_count']}条关系</span>
                        </div>
                        <span class="arrow">→</span>
                    </a>"""
        
        html += """
                </div>
            </div>"""
        return html
    
    # 按学科分组生成
    for subject_name, grouping in SUBJECT_GROUPING.items():
        hs_key, hs_color = grouping["highschool"] if grouping["highschool"] else (None, None)
        yj_key, yj_color = grouping["yijiao"] if grouping["yijiao"] else (None, None)
        cz_key, cz_color = grouping.get("chuzhong", (None, None)) if isinstance(grouping.get("chuzhong"), tuple) else (None, None)
        
        # 如果高中、义教或初中有数据，才显示这个学科组
        has_data = (hs_key and hs_key in subject_files) or (yj_key and yj_key in subject_files) or (cz_key and cz_key in subject_files)
        
        if has_data:
            html_parts.append(f"""
        <!-- {subject_name}学科 -->
        <section class="subject-section" data-subject="{subject_name}">
            <div class="subject-header">
                <span class="icon">{grouping['icon']}</span>
                <h2>{subject_name}</h2>
            </div>
            <div class="subject-group">""")
            
            # 高中列
            if hs_key and hs_key in subject_files:
                html_parts.append(generate_subject_column(hs_key, f"高中{subject_name}", hs_color, grouping['icon']))
            else:
                html_parts.append('<div class="subject-column"></div>')
            
            # 义教/初中列
            # 对于地理学科，如果同时有义教和初中，合并显示在义教列中
            # 对于其他学科，优先显示义教，如果没有则显示初中
            if yj_key and yj_key in subject_files:
                # 如果同时有初中地理，合并显示
                if subject_name == "地理" and cz_key and cz_key in subject_files:
                    # 合并显示义教和初中地理
                    yj_files = subject_files[yj_key]
                    cz_files = subject_files[cz_key]
                    all_files = yj_files + cz_files
                    html_parts.append(generate_subject_column_merged(
                        yj_key, cz_key, "义教/初中地理", yj_color, grouping['icon'], all_files
                    ))
                else:
                    html_parts.append(generate_subject_column(yj_key, f"义教{subject_name}", yj_color, grouping['icon']))
            elif cz_key and cz_key in subject_files:
                html_parts.append(generate_subject_column(cz_key, f"初中{subject_name}", cz_color, grouping['icon']))
            else:
                html_parts.append('<div class="subject-column"></div>')
            
            html_parts.append("""
            </div>
        </section>""")
    
    # 如果有未知文件，添加到"其他"分类
    if unknown_files:
        html_parts.append("""
        <!-- 其他 -->
        <section class="subject-section" data-subject="其他">
            <div class="subject-header">
                <span class="icon">📁</span>
                <h2>其他图谱</h2>
                <span class="count">{} 个图谱</span>
            </div>
            <div class="graph-grid">""".format(len(unknown_files)))
        
        for html_file in unknown_files:
            info = get_file_info(html_file)
            html_parts.append(f"""
                <a href="{html_file.name}" class="graph-card" style="--accent-color: #95a5a6">
                    <span class="type-badge curriculum">图谱</span>
                    <h3>{info['title']}</h3>
                    <p class="description">{info['description']}</p>
                    <div class="stats">
                        <span class="stat-item">📊 {info['entity_count']}个实体</span>
                        <span class="stat-item">🔗 {info['relation_count']}条关系</span>
                    </div>
                    <span class="arrow">→</span>
                </a>""")
        
        html_parts.append("""
            </div>
        </section>""")
    
    # 底部和脚本
    html_parts.append("""
    </main>
    
    <footer>
        <p>知识图谱可视化系统 · 基于 D3.js 构建</p>
        <p style="margin-top: 8px;">
            <a href="https://github.com" target="_blank">项目文档</a> · 
            <a href="#" onclick="alert('请配置 .env 文件后运行 src/neo4j_importer.py')">导入Neo4j</a>
        </p>
    </footer>
    
    <script>
        // 搜索功能
        const searchInput = document.getElementById('search-input');
        const cards = document.querySelectorAll('.graph-card:not(.add-card)');
        const sections = document.querySelectorAll('.subject-section');
        
        searchInput.addEventListener('input', (e) => {
            const term = e.target.value.toLowerCase();
            
            cards.forEach(card => {
                const title = card.querySelector('h3')?.textContent.toLowerCase() || '';
                const desc = card.querySelector('.description')?.textContent.toLowerCase() || '';
                const match = title.includes(term) || desc.includes(term);
                card.style.display = match ? '' : 'none';
            });
            
            // 隐藏空的分类
            sections.forEach(section => {
                const visibleCards = section.querySelectorAll('.graph-card:not(.add-card):not([style*="display: none"])');
                section.style.display = visibleCards.length > 0 || !term ? '' : 'none';
            });
        });
    </script>
</body>
</html>""")
    
    return "\n".join(html_parts)


def main():
    print("="*60)
    print("🔄 更新 index.html")
    print("="*60)
    
    # 扫描文件
    subject_files, unknown_files = scan_static_files()
    
    print(f"\n📁 扫描到 {len(subject_files)} 个学科分类:")
    for subject, files in subject_files.items():
        print(f"   {subject}: {len(files)} 个文件")
        for f in files:
            print(f"      - {f.name}")
    
    if unknown_files:
        print(f"\n⚠️  发现 {len(unknown_files)} 个未分类文件:")
        for f in unknown_files:
            print(f"   - {f.name}")
    
    # 生成新的index.html
    new_content = generate_index_html(subject_files, unknown_files)
    
    # 备份原文件
    if INDEX_FILE.exists():
        backup_file = INDEX_FILE.with_suffix('.html.bak')
        INDEX_FILE.rename(backup_file)
        print(f"\n💾 已备份原文件到: {backup_file.name}")
    
    # 写入新文件
    INDEX_FILE.write_text(new_content, encoding='utf-8')
    print(f"\n✅ index.html 已更新!")
    print(f"   📄 文件位置: {INDEX_FILE}")
    print(f"   🌐 访问地址: http://localhost:8888/index.html")


if __name__ == "__main__":
    main()
