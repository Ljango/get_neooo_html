#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
知识图谱HTML可视化生成器
从entities和relations生成D3.js可视化HTML文件
支持多学科、多学段
"""

import os
import json
import sys
from pathlib import Path
from typing import List, Dict, Any, Optional
from datetime import datetime


class GraphHTMLGenerator:
    """知识图谱HTML生成器"""
    
    # 学科配置：义教+高中，九门学科
    SUBJECTS = {
        '义教': {
            '语文': 'YW0301',
            '数学': 'SX0302',
            '英语': 'YY0303',
            '物理': 'WL0304',
            '化学': 'HX0305',
            '生物': 'SW0306',
            '政治': 'ZZ0307',
            '历史': 'LS0308',
            '地理': 'DL0309',
        },
        '高中': {
            '语文': 'SB0101',
            '数学': 'SB0201',
            '英语': 'SB0303',
            '物理': 'SB0404',
            '化学': 'SB0505',
            '生物': 'SB0606',
            '政治': 'SB0707',
            '历史': 'SB0808',
            '地理': 'SB0909',
        }
    }
    
    def __init__(self, subject_dir: str, output_dir: str = 'static'):
        """
        初始化生成器
        
        Args:
            subject_dir: 学科目录名，如 '高中数学'
            output_dir: 输出目录
        """
        self.base_dir = Path(__file__).parent
        self.subject_dir = self.base_dir / subject_dir
        self.output_dir = self.base_dir / output_dir
        self.output_dir.mkdir(exist_ok=True)
        
        self.entities_dir = self.subject_dir / 'entities'
        self.relations_dir = self.subject_dir / 'relations'
        
        # 检测学科和学段
        self.stage, self.subject_name = self._detect_stage_and_subject()
        
    def _detect_stage_and_subject(self) -> tuple:
        """检测学段和学科名称"""
        dir_name = self.subject_dir.name
        
        # 优先检测学段（义教优先，因为可能包含"义务"）
        if '义教' in dir_name or '义务教育' in dir_name or dir_name.startswith('义务'):
            stage = '义教'
        elif '高中' in dir_name:
            stage = '高中'
        else:
            stage = '高中'  # 默认
        
        # 检测学科（先检测义教的学科，再检测高中的学科）
        all_subjects = list(self.SUBJECTS['义教'].keys()) + list(self.SUBJECTS['高中'].keys())
        for subj_name in all_subjects:
            if subj_name in dir_name:
                return stage, subj_name
        
        return stage, '数学'  # 默认
    
    def flatten_content_json(self, entity: Dict[str, Any]) -> Dict[str, Any]:
        """
        扁平化contentJson，添加CJ_前缀
        
        Args:
            entity: 实体数据
            
        Returns:
            扁平化后的实体数据
        """
        result = {}
        
        for key, value in entity.items():
            if key == 'contentJson' and isinstance(value, dict):
                # 扁平化contentJson
                for cj_key, cj_value in value.items():
                    flat_key = f"CJ_{cj_key}"
                    # 处理值：数组保持原样，字典转为JSON字符串
                    if isinstance(cj_value, (list, str, int, float, bool)) or cj_value is None:
                        result[flat_key] = cj_value
                    elif isinstance(cj_value, dict):
                        result[flat_key] = json.dumps(cj_value, ensure_ascii=False)
                    else:
                        result[flat_key] = str(cj_value)
            else:
                result[key] = value
        
        return result
    
    def load_entities(self) -> List[Dict[str, Any]]:
        """加载所有实体"""
        entities = []
        
        if not self.entities_dir.exists():
            print(f"错误: 实体目录不存在: {self.entities_dir}")
            return entities
        
        entity_files = list(self.entities_dir.glob('*.json'))
        print(f"找到 {len(entity_files)} 个实体文件")
        
        for entity_file in entity_files:
            try:
                with open(entity_file, 'r', encoding='utf-8') as f:
                    data = json.load(f)
                
                entity_list = None
                
                if isinstance(data, list):
                    # 直接是数组
                    entity_list = data
                elif isinstance(data, dict):
                    # 尝试多种可能的键名
                    possible_keys = ['entities', 'experiments', 'data', 'items', 'list', 'records']
                    for key in possible_keys:
                        if key in data:
                            entity_list = data[key]
                            break
                    
                    # 如果没找到，尝试找第一个值为列表的键
                    if entity_list is None:
                        for key, value in data.items():
                            if isinstance(value, list) and len(value) > 0:
                                # 检查是否看起来像实体列表（有identifier字段）
                                if isinstance(value[0], dict) and 'identifier' in value[0]:
                                    entity_list = value
                                    break
                
                if entity_list is None:
                    print(f"  ✗ {entity_file.name}: 无法识别数据格式")
                    continue
                
                # 扁平化并添加到列表
                for entity in entity_list:
                    flat_entity = self.flatten_content_json(entity)
                    entities.append(flat_entity)
                
                print(f"  ✓ {entity_file.name}: {len(entity_list)} 个实体")
                
            except Exception as e:
                print(f"  ✗ 读取 {entity_file.name} 失败: {e}")
        
        print(f"总计加载 {len(entities)} 个实体")
        return entities
    
    def load_relations(self) -> List[Dict[str, Any]]:
        """加载所有关系"""
        relations = []
        
        if not self.relations_dir.exists():
            print(f"错误: 关系目录不存在: {self.relations_dir}")
            return relations
        
        relation_files = list(self.relations_dir.glob('*.json'))
        print(f"找到 {len(relation_files)} 个关系文件")
        
        for relation_file in relation_files:
            try:
                with open(relation_file, 'r', encoding='utf-8') as f:
                    data = json.load(f)
                
                if isinstance(data, dict) and 'relationships' in data:
                    relation_list = data['relationships']
                elif isinstance(data, list):
                    relation_list = data
                else:
                    continue
                
                relations.extend(relation_list)
                print(f"  ✓ {relation_file.name}: {len(relation_list)} 个关系")
                
            except Exception as e:
                print(f"  ✗ 读取 {relation_file.name} 失败: {e}")
        
        print(f"总计加载 {len(relations)} 个关系")
        return relations
    
    def build_graph_data(self, entities: List[Dict], relations: List[Dict]) -> Dict[str, Any]:
        """
        构建D3.js格式的图谱数据
        
        Args:
            entities: 实体列表
            relations: 关系列表
            
        Returns:
            {nodes: [...], links: [...]}
        """
        # 构建节点集合（使用identifier作为唯一标识）
        node_set = set()
        nodes = []
        
        for entity in entities:
            identifier = entity.get('identifier')
            if identifier and identifier not in node_set:
                node_set.add(identifier)
                nodes.append(entity)
        
        # 构建规范化映射，处理identifier格式不一致的情况
        # 例如: theme:预备知识:th001 -> theme:th001
        normalized_map = {}  # normalized_id -> actual_id
        for identifier in node_set:
            normalized = self._normalize_identifier(identifier)
            normalized_map[normalized] = identifier
            # 也记录原始的
            normalized_map[identifier] = identifier
        
        # 构建边（保持source和target为identifier字符串，D3.js会通过id函数匹配）
        links = []
        missing_sources = set()
        missing_targets = set()
        
        for relation in relations:
            source_id = relation.get('source')
            target_id = relation.get('target')
            
            # 尝试规范化查找
            actual_source = normalized_map.get(source_id) or normalized_map.get(self._normalize_identifier(source_id))
            actual_target = normalized_map.get(target_id) or normalized_map.get(self._normalize_identifier(target_id))
            
            if actual_source and actual_target:
                links.append({
                    'source': actual_source,  # 使用实际存在的identifier
                    'target': actual_target,  # 使用实际存在的identifier
                    'relationName': relation.get('relationName', ''),
                    'label': relation.get('label', '')
                })
            else:
                if not actual_source:
                    missing_sources.add(source_id)
                if not actual_target:
                    missing_targets.add(target_id)
        
        # 报告缺失的节点
        if missing_sources or missing_targets:
            print(f"\n⚠ 关系中引用了未找到的节点:")
            if missing_sources:
                print(f"  缺失的source节点 ({len(missing_sources)}个):")
                for ms in list(missing_sources)[:5]:
                    print(f"    - {ms}")
                if len(missing_sources) > 5:
                    print(f"    ... 还有 {len(missing_sources) - 5} 个")
            if missing_targets:
                print(f"  缺失的target节点 ({len(missing_targets)}个):")
                for mt in list(missing_targets)[:5]:
                    print(f"    - {mt}")
                if len(missing_targets) > 5:
                    print(f"    ... 还有 {len(missing_targets) - 5} 个")
        
        return {
            'nodes': nodes,
            'links': links
        }
    
    def _normalize_identifier(self, identifier: str) -> str:
        """规范化identifier，处理格式不一致的情况"""
        if not identifier:
            return identifier
        # 处理 theme:预备知识:th001 -> theme:th001
        if ':theme:' in identifier and ':th' in identifier:
            parts = identifier.split(':')
            theme_idx = -1
            th_idx = -1
            for i, part in enumerate(parts):
                if part == 'theme':
                    theme_idx = i
                elif part.startswith('th') and len(part) <= 5:  # th001 等
                    th_idx = i
            if theme_idx >= 0 and th_idx >= 0 and th_idx > theme_idx + 1:
                new_parts = parts[:theme_idx+1] + parts[th_idx:]
                return ':'.join(new_parts)
        return identifier
    
    def _load_html_template(self) -> str:
        """加载HTML模板"""
        template_path = self.base_dir / 'static' / 'graph_preview.html'
        if template_path.exists():
            with open(template_path, 'r', encoding='utf-8') as f:
                return f.read()
        else:
            # 返回默认模板
            return self._get_default_template()
    
    def _get_default_template(self) -> str:
        """获取默认HTML模板"""
        return '''<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<title>__TITLE__</title>
<style>
  :root { --bg:#0b1220; --panel:#0e1628; --panel-border:#1f2937; --text:#e5e7eb; --muted:#9ca3af; --accent:#60a5fa; }
  html, body { height: 100%; }
  body { margin:0; background: var(--bg); color: var(--text); font-family: Inter, system-ui, -apple-system, "Segoe UI", "Noto Sans SC", Arial, sans-serif; }
  #app { display:flex; height:100%; width:100%; }
  .panel { width: 380px; overflow:auto; background: linear-gradient(180deg,#0b1220,#0e1628); border-right:1px solid var(--panel-border); padding: 14px; }
  .graph { flex:1; position:relative; }
  svg { width:100%; height:100%; display:block; background: radial-gradient(1200px 800px at 50% 45%, #0f172a 0%, #0b1220 60%, #080f1d 100%); }
  .node circle { stroke:#000; stroke-width:0.6px; }
  .node.fixed circle { stroke:#fbbf24; stroke-width:1.2px; }
  .node text { font-size:10px; fill:#e5e7eb; pointer-events:none; text-shadow: 0 1px 1px #000; }
  .link { stroke:#93c5fd55; stroke-width:1px; }
  .hidden { display: none; }
  .link-label { font-size:9px; fill:#cbd5e1; opacity:.85; pointer-events:none; text-shadow: 0 1px 1px #000; }
  .tooltip { position:absolute; pointer-events:none; background:#0b1220; color:var(--text); border:1px solid var(--panel-border); border-radius:10px; padding:10px; font-size:12px; max-width: 460px; z-index: 3; box-shadow: 0 10px 30px rgba(0,0,0,.45); }
  .sec { border:1px solid var(--panel-border); border-radius:10px; padding:10px; margin-bottom:10px; }
  .sec h2 { margin:0 0 6px; font-size:14px; color:#e5e7eb; }
  .ctrl { display:flex; gap:8px; align-items:center; flex-wrap:wrap; margin:6px 0; }
  .chip { padding:3px 8px; border:1px solid var(--panel-border); border-radius:999px; font-size:12px; cursor:pointer; user-select:none; }
  .chip:hover { border-color:#334155; }
  input[type="text"] { width:100%; background:#0b1220; color:var(--text); border:1px solid #1f2937; border-radius:8px; padding:8px; outline:none; }
  input[type="text"]::placeholder { color:#64748b; }
  .small { font-size:12px; color:#9ca3af; }
</style>
</head>
<body>
<div id="app">
  <aside class="panel">
    <h1 style="font-size:18px;margin:6px 0 8px;">__HEADER__</h1>
    <div class="small">完整网状结构 | 深色背景 | 可拖拽/缩放 | 双击解锁 | 关系筛选</div>
    <div id="stats" class="small" style="margin:8px 0 10px;"></div>

    <div class="sec">
      <h2>🔍 节点搜索</h2>
      <input id="nodeSearch" type="text" placeholder="按标题/ID/描述/类型/层级搜索…（回车应用）" />
      <div class="ctrl">
        <label><input id="nodeOnly" type="checkbox"/> 只显示匹配节点</label>
        <span class="chip" id="resetNodeSearch">清空</span>
      </div>
    </div>

    <div class="sec">
      <h2>🔗 关系搜索</h2>
      <input id="linkSearch" type="text" placeholder="按关系名称/标签搜索…（回车应用）" />
      <div class="ctrl">
        <label><input id="linkOnly" type="checkbox"/> 只显示匹配关系</label>
        <span class="chip" id="resetLinkSearch">清空</span>
      </div>
    </div>

    <div class="sec">
      <h2>🧩 实体类型筛选</h2>
      <div class="ctrl">
        <span class="chip" id="typeAll">全选</span>
        <span class="chip" id="typeNone">全不选</span>
      </div>
      <div id="typeFilters" class="ctrl"></div>
    </div>

    <div class="sec">
      <h2>🧭 关系类型筛选</h2>
      <div class="ctrl">
        <span class="chip" id="relAll">全选</span>
        <span class="chip" id="relNone">全不选</span>
      </div>
      <div id="relFilters" class="ctrl"></div>
    </div>
  </aside>

  <main class="graph">
    <svg id="svg"></svg>
    <div class="tooltip" id="tooltip" style="display:none"></div>
  </main>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/d3/7.9.0/d3.min.js"></script>
<script>
// 图谱数据（内嵌）
const GRAPH = __GRAPH_DATA__;

// ========== 全局变量 ==========
let svg, gRoot;
let simulation = null;

// ========== 初始化SVG容器 ==========
function initSVG() {
  svg = d3.select("#svg");
  gRoot = svg.append("g");
  
  svg.append("defs").selectAll("marker").data(["arrow"]).join("marker")
    .attr("id","arrow").attr("viewBox","0 -5 10 10").attr("refX", 18).attr("refY", 0)
    .attr("markerWidth", 6).attr("markerHeight", 6).attr("orient", "auto")
    .append("path").attr("d", "M0,-5L10,0L0,5").attr("fill", "#93c5fd");
  
  svg.call(d3.zoom().scaleExtent([0.05,6]).on("zoom", e => gRoot.attr("transform", e.transform)));
}

// ========== 初始化图谱 ==========
function initializeGraph() {
  let links = GRAPH.links.map(d => Object.assign({}, d));
  let nodes = GRAPH.nodes.map(d => Object.assign({degree:0}, d));
  
  const deg = new Map();
  nodes.forEach(d => {
    const key = getNodeId(d);
    if(key && !deg.has(key)){
      deg.set(key, 0);
    }
  });
  
  links.forEach(l => {
    const sid = l.source;
    const tid = l.target;
    if(sid && tid){
      deg.set(sid, (deg.get(sid) || 0) + 1);
      deg.set(tid, (deg.get(tid) || 0) + 1);
    }
  });
  
  nodes.forEach(d => {
    const key = getNodeId(d);
    d.degree = deg.get(key) || 0;
  });
  
  const typeSet = new Set(nodes.map(d => d.type).filter(Boolean));
  const typeList = Array.from(typeSet).sort();
  
  const relTypeSet = new Set(links.map(d => d.relationName || d.label).filter(Boolean));
  const relTypeList = Array.from(relTypeSet).sort();
  
  // 为每种实体类型分配颜色
  const color = d3.scaleOrdinal()
    .domain(typeList)
    .range(d3.schemeTableau10.concat(d3.schemeSet3).slice(0, typeList.length));
  
  const state = {
    enabledTypes: new Set(typeList),
    enabledRelTypes: new Set(relTypeList),
    nodeQuery: "",
    linkQuery: "",
    nodeOnly: false,
    linkOnly: false
  };
  
  function getNodeId(d) {
    return d.identifier || d.id || "";
  }
  
  const width = svg.node().getBoundingClientRect().width;
  const height = svg.node().getBoundingClientRect().height;
  
  if(simulation) simulation.stop();
  simulation = d3.forceSimulation(nodes)
    .force("link", d3.forceLink(links).id(d => getNodeId(d)).distance(80))
    .force("charge", d3.forceManyBody().strength(-300))
    .force("center", d3.forceCenter(width/2, height/2))
    .force("collision", d3.forceCollide().radius(20));
  
  const linkSel = gRoot.selectAll(".link").data(links).join("line").attr("class","link");
  const linkLabelSel = gRoot.selectAll(".link-label").data(links).join("text").attr("class","link-label").text(d => d.label || "");
  
  const nodeSel = gRoot.selectAll(".node").data(nodes).join("g").attr("class","node")
    .call(d3.drag().on("start", function(event, d) {
      if(!d.fixed) d.fixed = true;
      event.sourceEvent.stopPropagation();
    }).on("drag", function(event, d) {
      d.fx = event.x; d.fy = event.y;
    }).on("end", function(event, d) {
      if(event.sourceEvent.detail === 2){
        d.fixed = false; d.fx = null; d.fy = null;
      }
    }));
  
  nodeSel.append("circle")
    .attr("r", d => Math.sqrt(d.degree || 1) * 3 + 4)
    .attr("fill", d => color(d.type) || "#60a5fa")
    .attr("stroke", "#000")
    .attr("stroke-width", 0.6);
  nodeSel.append("text").text(d => d.title || getNodeId(d)).attr("dy", 18);
  
  nodeSel.on("mouseover", function(event, d) { showTooltip(event, d); })
    .on("mouseout", hideTooltip);
  
  simulation.on("tick", () => {
    linkSel.attr("x1", d => d.source.x)
      .attr("y1", d => d.source.y)
      .attr("x2", d => d.target.x)
      .attr("y2", d => d.target.y);
    
    linkLabelSel.attr("x", d => (d.source.x + d.target.x) / 2)
      .attr("y", d => (d.source.y + d.target.y) / 2);
    
    nodeSel.attr("transform", d => `translate(${d.x},${d.y})`);
  });
  
  function updateVisibility() {
    const nodeQuery = state.nodeQuery.toLowerCase();
    const linkQuery = state.linkQuery.toLowerCase();
    
    const nodeOk = new Set();
    nodes.forEach((d, i) => {
      const matchType = state.enabledTypes.has(d.type);
      const matchQuery = !nodeQuery || JSON.stringify(d).toLowerCase().includes(nodeQuery);
      if(matchType && (matchQuery || !state.nodeOnly)){
        nodeOk.add(i);
      }
    });
    
    nodeSel.classed("hidden", (d, i) => {
      const queryOk = !nodeQuery || JSON.stringify(d).toLowerCase().includes(nodeQuery);
      const pass = state.enabledTypes.has(d.type) && (state.nodeOnly ? queryOk : true);
      return !pass;
    });
    
    linkSel.classed("hidden", (d, i) => {
      const queryOk = !linkQuery || JSON.stringify(d).toLowerCase().includes(linkQuery);
      // d.source和d.target在forceLink处理后是节点对象
      const sourceId = getNodeId(d.source);
      const targetId = getNodeId(d.target);
      const sourceIdx = nodes.findIndex(n => getNodeId(n) === sourceId);
      const targetIdx = nodes.findIndex(n => getNodeId(n) === targetId);
      const nodesOk = sourceIdx >= 0 && targetIdx >= 0 && nodeOk.has(sourceIdx) && nodeOk.has(targetIdx);
      const relOk = state.enabledRelTypes.has(d.relationName) || state.enabledRelTypes.has(d.label);
      const pass = relOk && nodesOk && (state.linkOnly ? queryOk : true);
      return !pass;
    });
    
    linkLabelSel.classed("hidden", (_,i)=> d3.select(linkSel.nodes()[i]).classed("hidden"));
    
    const visibleNodes = nodeSel.nodes().filter(el => !el.classList.contains("hidden")).length;
    const visibleLinks = linkSel.nodes().filter(el => !el.classList.contains("hidden")).length;
    document.getElementById("stats").innerText = 
      `实体：${nodes.length}（可见 ${visibleNodes}） · 关系：${links.length}（可见 ${visibleLinks}） · 类型：${typeList.length}`;
  }
  
  function buildCheckboxes(containerId, items, setRef, onChange){
    const wrap = document.getElementById(containerId);
    wrap.innerHTML = "";
    items.forEach(name => {
      const id = containerId + "_" + name.replace(/\\W+/g,"_");
      const label = document.createElement("label");
      label.style.display = "flex"; label.style.gap = "6px"; label.style.alignItems="center";
      const cb = document.createElement("input");
      cb.type = "checkbox"; cb.checked = setRef.has(name); cb.id = id;
      cb.addEventListener("change", ()=>{
        if(cb.checked) setRef.add(name); else setRef.delete(name);
        onChange();
      });
      const span = document.createElement("span");
      span.textContent = name;
      label.appendChild(cb); label.appendChild(span);
      wrap.appendChild(label);
    });
  }
  
  document.getElementById("nodeSearch").addEventListener("keydown", e=>{
    if(e.key === "Enter"){ 
      state.nodeQuery = e.target.value.trim(); 
      updateVisibility(); 
    }
  });
  
  document.getElementById("linkSearch").addEventListener("keydown", e=>{
    if(e.key === "Enter"){ 
      state.linkQuery = e.target.value.trim(); 
      updateVisibility(); 
    }
  });
  
  document.getElementById("nodeOnly").addEventListener("change", e=>{ 
    state.nodeOnly = e.target.checked; 
    updateVisibility(); 
  });
  document.getElementById("linkOnly").addEventListener("change", e=>{ 
    state.linkOnly = e.target.checked; 
    updateVisibility(); 
  });
  
  document.getElementById("resetNodeSearch").addEventListener("click", ()=>{ 
    document.getElementById("nodeSearch").value=""; 
    state.nodeQuery=""; 
    updateVisibility(); 
  });
  document.getElementById("resetLinkSearch").addEventListener("click", ()=>{ 
    document.getElementById("linkSearch").value=""; 
    state.linkQuery=""; 
    updateVisibility(); 
  });
  
  buildCheckboxes("typeFilters", typeList, state.enabledTypes, updateVisibility);
  buildCheckboxes("relFilters", relTypeList, state.enabledRelTypes, updateVisibility);
  
  document.getElementById("typeAll").addEventListener("click", ()=>{ 
    state.enabledTypes = new Set(typeList); 
    buildCheckboxes("typeFilters", typeList, state.enabledTypes, updateVisibility); 
    updateVisibility(); 
  });
  document.getElementById("typeNone").addEventListener("click", ()=>{ 
    state.enabledTypes = new Set(); 
    buildCheckboxes("typeFilters", typeList, state.enabledTypes, updateVisibility); 
    updateVisibility(); 
  });
  document.getElementById("relAll").addEventListener("click", ()=>{ 
    state.enabledRelTypes = new Set(relTypeList); 
    buildCheckboxes("relFilters", relTypeList, state.enabledRelTypes, updateVisibility); 
    updateVisibility(); 
  });
  document.getElementById("relNone").addEventListener("click", ()=>{ 
    state.enabledRelTypes = new Set(); 
    buildCheckboxes("relFilters", relTypeList, state.enabledRelTypes, updateVisibility); 
    updateVisibility(); 
  });
  
  const tooltip = document.getElementById("tooltip");
  function showTooltip(evt, d) { 
    const cjKeys = Object.keys(d).filter(k => k.startsWith('CJ_'));
    const cjData = {};
    cjKeys.forEach(k => cjData[k] = d[k]);
    const cjInfo = cjKeys.length ? `<div style="color:#93c5fd;margin:4px 0;">ContentJson字段：${cjKeys.join(', ')}</div>` : "";
    const jsonPreview = cjKeys.length ? `<pre style="margin:6px 0 0; white-space:pre-wrap; color:#9ca3af;">${esc(JSON.stringify(cjData, null, 2))}</pre>` : "";
    tooltip.style.display = "block";
    tooltip.style.left = (evt.pageX + 14) + "px";
    tooltip.style.top = (evt.pageY + 14) + "px";
    tooltip.innerHTML = `<div style="font-weight:600; margin-bottom:4px;">${esc(d.title||getNodeId(d))}</div>
    <div style="color:#93c5fd; margin-bottom:4px;">类型：${esc(d.type)}　层级：${esc(d.applicableLevel||"")}</div>
    ${cjInfo}
    <div style="margin-bottom:4px;"><b>ID</b> <span style="font-family: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, 'Liberation Mono', 'Courier New', monospace;">${esc(getNodeId(d))}</span></div>
    <div style="font-size:12px; white-space:pre-wrap; color:#cbd5e1;">${esc(d.description||"")}</div>${jsonPreview}`;
  }
  function hideTooltip(){ tooltip.style.display="none"; }
  
  function esc(s){ 
    return (s||"").toString().replace(/[&<>"']/g, m=>{ 
      const map = { 
        "&":"&amp;", "<":"&lt;", ">":"&gt;", '"':"&quot;", "'":"&#39;" 
      };
      return map[m] || m;
    }); 
  }
  
  document.getElementById("stats").innerText = 
    `实体：${nodes.length} · 关系：${links.length} · 类型：${typeList.length}`;
  updateVisibility();
}

if (document.readyState === 'loading') {
  document.addEventListener('DOMContentLoaded', () => {
    initSVG();
    initializeGraph();
  });
} else {
  initSVG();
  initializeGraph();
}

</script>
</body>
</html>'''
    
    def generate_html(self, graph_data: Dict[str, Any], filename: str = None) -> str:
        """
        生成HTML文件内容
        
        Args:
            graph_data: 图谱数据
            filename: 输出文件名（可选）
            
        Returns:
            HTML文件内容
        """
        # 将数据转为JSON字符串（内嵌到HTML中）
        data_json = json.dumps(graph_data, ensure_ascii=False, indent=2)
        # 转义JSON字符串中的特殊字符
        data_json_escaped = data_json.replace('</script>', '<\\/script>')
        
        # 获取模板
        template = self._get_default_template()
        
        # 替换占位符
        html_content = template.replace('__TITLE__', f'{self.stage}{self.subject_name}知识图谱 · 可视化')
        html_content = html_content.replace('__HEADER__', f'{self.stage}{self.subject_name}知识图谱')
        html_content = html_content.replace('__GRAPH_DATA__', data_json_escaped)
        
        return html_content
    
    def generate(self, output_filename: str = None) -> str:
        """
        生成HTML文件
        
        Args:
            output_filename: 输出文件名（可选）
            
        Returns:
            输出文件路径
        """
        print("=" * 60)
        print(f"生成 {self.stage}{self.subject_name} 知识图谱可视化")
        print("=" * 60)
        
        # 加载数据
        entities = self.load_entities()
        relations = self.load_relations()
        
        if not entities:
            print("错误: 没有找到实体数据")
            return None
        
        # 构建图谱数据
        graph_data = self.build_graph_data(entities, relations)
        print(f"\n图谱统计:")
        print(f"  节点: {len(graph_data['nodes'])}")
        print(f"  关系: {len(graph_data['links'])}")
        
        # 生成HTML
        html_content = self.generate_html(graph_data, output_filename)
        
        # 保存文件
        if output_filename is None:
            output_filename = f"{self.subject_name}_{self.stage}.html"
        
        output_path = self.output_dir / output_filename
        with open(output_path, 'w', encoding='utf-8') as f:
            f.write(html_content)
        
        print(f"\n✓ 已生成: {output_path}")
        return str(output_path)


def main():
    """主函数"""
    import argparse
    
    parser = argparse.ArgumentParser(description='知识图谱HTML可视化生成器')
    parser.add_argument('subject_dir', nargs='?', default='高中数学', help='学科目录名')
    parser.add_argument('--output', '-o', default='static', help='输出目录')
    parser.add_argument('--filename', '-f', help='输出文件名（可选）')
    
    args = parser.parse_args()
    
    generator = GraphHTMLGenerator(args.subject_dir, args.output)
    output_path = generator.generate(args.filename)
    
    if output_path:
        print(f"\n可以在浏览器中打开: file://{Path(output_path).absolute()}")
        sys.exit(0)
    else:
        sys.exit(1)


if __name__ == '__main__':
    main()
