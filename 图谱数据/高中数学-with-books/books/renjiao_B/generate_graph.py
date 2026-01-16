#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
人教B版高中数学教材知识图谱生成器

功能：
1. 从教材目录JSON生成章节实体(Chapter/Section/SubSection)
2. 构建章节与知识点(KeyPoint)的映射关系
3. 导出HTML可视化文件
4. 导出Neo4j导入脚本(Cypher语句)

目录结构:
  - entities.json: 教材章节实体
  - relations.json: 章节层级关系 + 章节-知识点映射
  - keypoints_merged.json: 合并后的完整数据（包含KeyPoint）
  - graph_visualization.html: HTML可视化
  - neo4j_import.cypher: Neo4j导入脚本
"""

import json
import os
from pathlib import Path
from typing import List, Dict, Any, Optional
from datetime import datetime


class TextbookGraphGenerator:
    """教材知识图谱生成器"""
    
    def __init__(self, book_dir: str = None):
        """
        初始化生成器
        
        Args:
            book_dir: 教材数据目录，默认为当前脚本所在目录
        """
        if book_dir:
            self.book_dir = Path(book_dir)
        else:
            self.book_dir = Path(__file__).parent
        
        self.base_dir = self.book_dir.parent.parent  # 图谱数据/高中数学
        self.keypoint_file = self.base_dir / 'entities' / 'KeyPoint.json'
        
        # 输出文件
        self.output_merged = self.book_dir / 'keypoints_merged.json'
        self.output_html = self.book_dir / 'graph_visualization.html'
        self.output_cypher = self.book_dir / 'neo4j_import.cypher'
        
        # 加载数据
        self.entities = []
        self.relations = []
        self.keypoints = []
        
    def load_data(self):
        """加载所有数据"""
        print("=" * 60)
        print("加载数据")
        print("=" * 60)
        
        # 加载实体
        entities_file = self.book_dir / 'entities.json'
        if entities_file.exists():
            with open(entities_file, 'r', encoding='utf-8') as f:
                data = json.load(f)
                self.entities = data.get('entities', []) if isinstance(data, dict) else data
            print(f"✓ 加载教材实体: {len(self.entities)} 个")
        else:
            print(f"✗ 实体文件不存在: {entities_file}")
        
        # 加载关系
        relations_file = self.book_dir / 'relations.json'
        if relations_file.exists():
            with open(relations_file, 'r', encoding='utf-8') as f:
                data = json.load(f)
                self.relations = data.get('relations', []) if isinstance(data, dict) else data
            print(f"✓ 加载关系: {len(self.relations)} 个")
        else:
            print(f"✗ 关系文件不存在: {relations_file}")
        
        # 加载知识点
        if self.keypoint_file.exists():
            with open(self.keypoint_file, 'r', encoding='utf-8') as f:
                data = json.load(f)
                self.keypoints = data.get('entities', []) if isinstance(data, dict) else data
            print(f"✓ 加载知识点: {len(self.keypoints)} 个")
        else:
            print(f"✗ 知识点文件不存在: {self.keypoint_file}")
    
    def get_related_keypoints(self) -> Dict[str, Dict]:
        """
        获取关系中涉及的知识点
        
        Returns:
            知识点字典，key为identifier，value为知识点数据
        """
        # 收集所有关系中涉及的知识点identifier
        kp_ids = set()
        for rel in self.relations:
            source = rel.get('source', '')
            target = rel.get('target', '')
            if 'KeyPoint' in source:
                kp_ids.add(source)
            if 'KeyPoint' in target:
                kp_ids.add(target)
        
        # 从知识点列表中提取相关的知识点
        related_kps = {}
        for kp in self.keypoints:
            if kp.get('identifier') in kp_ids:
                related_kps[kp['identifier']] = kp
        
        print(f"关系涉及 {len(kp_ids)} 个知识点，找到 {len(related_kps)} 个")
        return related_kps
    
    def generate_merged_data(self) -> Dict[str, Any]:
        """
        生成合并后的完整数据
        
        Returns:
            包含所有实体和关系的字典
        """
        print("\n" + "=" * 60)
        print("生成合并数据")
        print("=" * 60)
        
        # 获取相关知识点
        related_kps = self.get_related_keypoints()
        
        # 合并实体列表
        all_entities = list(self.entities)  # 教材章节实体
        for kp in related_kps.values():
            all_entities.append(kp)
        
        # 构建合并数据
        merged_data = {
            'meta': {
                'title': '高中数学人教版B版教材知识图谱',
                'description': '教材章节与课标知识点的映射关系',
                'generated_at': datetime.now().isoformat(),
                'book_version': '人教版（B版）（主编：高存明）',
                'stats': {
                    'chapters': len([e for e in self.entities if e.get('type') == 'Chapter']),
                    'sections': len([e for e in self.entities if e.get('type') == 'Section']),
                    'subsections': len([e for e in self.entities if e.get('type') == 'SubSection']),
                    'keypoints': len(related_kps),
                    'relations': len(self.relations)
                }
            },
            'entities': all_entities,
            'relations': self.relations
        }
        
        # 保存合并数据
        with open(self.output_merged, 'w', encoding='utf-8') as f:
            json.dump(merged_data, f, ensure_ascii=False, indent=2)
        
        print(f"✓ 已保存合并数据: {self.output_merged}")
        print(f"  - 实体总数: {len(all_entities)}")
        print(f"  - 关系总数: {len(self.relations)}")
        
        return merged_data
    
    def generate_html(self, merged_data: Dict[str, Any]):
        """
        生成HTML可视化文件
        
        Args:
            merged_data: 合并后的数据
        """
        print("\n" + "=" * 60)
        print("生成HTML可视化")
        print("=" * 60)
        
        # 构建D3.js格式的图谱数据
        graph_data = {
            'nodes': merged_data['entities'],
            'links': merged_data['relations']
        }
        
        # HTML模板
        html_template = '''<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<title>高中数学人教B版 · 教材知识图谱</title>
<style>
  :root { --bg:#0b1220; --panel:#0e1628; --panel-border:#1f2937; --text:#e5e7eb; --muted:#9ca3af; --accent:#60a5fa; }
  html, body { height: 100%; }
  body { margin:0; background: var(--bg); color: var(--text); font-family: Inter, system-ui, -apple-system, "Segoe UI", "Noto Sans SC", Arial, sans-serif; }
  #app { display:flex; height:100%; width:100%; }
  .panel { width: 420px; overflow:auto; background: linear-gradient(180deg,#0b1220,#0e1628); border-right:1px solid var(--panel-border); padding: 14px; }
  .graph { flex:1; position:relative; }
  svg { width:100%; height:100%; display:block; background: radial-gradient(1200px 800px at 50% 45%, #0f172a 0%, #0b1220 60%, #080f1d 100%); }
  .node circle { stroke:#000; stroke-width:0.6px; cursor: pointer; }
  .node.fixed circle { stroke:#fbbf24; stroke-width:1.2px; }
  .node.highlight circle { stroke:#22c55e; stroke-width:2px; }
  .node text { font-size:10px; fill:#e5e7eb; pointer-events:none; text-shadow: 0 1px 1px #000; }
  .link { stroke:#93c5fd55; stroke-width:1px; }
  .link.highlight { stroke:#22c55e; stroke-width:2px; }
  .hidden { display: none; }
  .link-label { font-size:8px; fill:#cbd5e1; opacity:.7; pointer-events:none; text-shadow: 0 1px 1px #000; }
  .tooltip { position:absolute; pointer-events:none; background:#0b1220; color:var(--text); border:1px solid var(--panel-border); border-radius:10px; padding:12px; font-size:12px; max-width: 500px; z-index: 3; box-shadow: 0 10px 30px rgba(0,0,0,.45); }
  .sec { border:1px solid var(--panel-border); border-radius:10px; padding:10px; margin-bottom:10px; }
  .sec h2 { margin:0 0 6px; font-size:14px; color:#e5e7eb; }
  .ctrl { display:flex; gap:8px; align-items:center; flex-wrap:wrap; margin:6px 0; }
  .chip { padding:3px 8px; border:1px solid var(--panel-border); border-radius:999px; font-size:12px; cursor:pointer; user-select:none; transition: all 0.2s; }
  .chip:hover { border-color:#334155; background: #1f2937; }
  input[type="text"] { width:100%; background:#0b1220; color:var(--text); border:1px solid #1f2937; border-radius:8px; padding:8px; outline:none; }
  input[type="text"]::placeholder { color:#64748b; }
  .small { font-size:12px; color:#9ca3af; }
  .legend { display: flex; flex-wrap: wrap; gap: 8px; margin-top: 8px; }
  .legend-item { display: flex; align-items: center; gap: 4px; font-size: 11px; }
  .legend-color { width: 12px; height: 12px; border-radius: 50%; }
  .content-box { background: #0b1220; border: 1px solid #1f2937; border-radius: 8px; padding: 8px; margin-top: 8px; max-height: 200px; overflow-y: auto; }
  .content-item { padding: 4px 0; border-bottom: 1px solid #1f2937; font-size: 11px; }
  .content-item:last-child { border-bottom: none; }
</style>
</head>
<body>
<div id="app">
  <aside class="panel">
    <h1 style="font-size:18px;margin:6px 0 8px;">📚 高中数学人教B版 · 知识图谱</h1>
    <div class="small">教材章节 ↔ 课标知识点映射 | 可拖拽/缩放 | 点击查看详情</div>
    <div id="stats" class="small" style="margin:8px 0 10px;"></div>

    <div class="sec">
      <h2>📊 图例</h2>
      <div class="legend" id="legend"></div>
    </div>

    <div class="sec">
      <h2>🔍 节点搜索</h2>
      <input id="nodeSearch" type="text" placeholder="按标题/ID搜索…（回车应用）" />
      <div class="ctrl">
        <label style="font-size:12px;"><input id="nodeOnly" type="checkbox"/> 只显示匹配节点</label>
        <span class="chip" id="resetNodeSearch">清空</span>
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
      <h2>🔗 关系类型筛选</h2>
      <div class="ctrl">
        <span class="chip" id="relAll">全选</span>
        <span class="chip" id="relNone">全不选</span>
      </div>
      <div id="relFilters" class="ctrl"></div>
    </div>

    <div class="sec" id="detailPanel" style="display:none;">
      <h2>📋 节点详情</h2>
      <div id="detailContent"></div>
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

// 实体类型颜色配置
const TYPE_COLORS = {
  'Chapter': '#f59e0b',      // 章 - 橙色
  'Section': '#3b82f6',      // 节 - 蓝色
  'SubSection': '#8b5cf6',   // 小节 - 紫色
  'KeyPoint': '#22c55e',     // 知识点 - 绿色
};

const TYPE_LABELS = {
  'Chapter': '章',
  'Section': '节',
  'SubSection': '小节',
  'KeyPoint': '知识点'
};

// ========== 全局变量 ==========
let svg, gRoot;
let simulation = null;
let selectedNode = null;

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
  
  // 生成图例
  const legendDiv = document.getElementById('legend');
  legendDiv.innerHTML = typeList.map(t => `
    <div class="legend-item">
      <div class="legend-color" style="background:${TYPE_COLORS[t] || '#60a5fa'}"></div>
      <span>${TYPE_LABELS[t] || t}</span>
    </div>
  `).join('');
  
  const state = {
    enabledTypes: new Set(typeList),
    enabledRelTypes: new Set(relTypeList),
    nodeQuery: "",
    nodeOnly: false
  };
  
  function getNodeId(d) {
    return d.identifier || d.id || "";
  }
  
  const width = svg.node().getBoundingClientRect().width;
  const height = svg.node().getBoundingClientRect().height;
  
  if(simulation) simulation.stop();
  simulation = d3.forceSimulation(nodes)
    .force("link", d3.forceLink(links).id(d => getNodeId(d)).distance(100))
    .force("charge", d3.forceManyBody().strength(-400))
    .force("center", d3.forceCenter(width/2, height/2))
    .force("collision", d3.forceCollide().radius(25));
  
  const linkSel = gRoot.selectAll(".link").data(links).join("line")
    .attr("class","link")
    .attr("marker-end", "url(#arrow)");
  
  const linkLabelSel = gRoot.selectAll(".link-label").data(links).join("text")
    .attr("class","link-label")
    .text(d => d.label ? d.label.split('/')[0].trim() : "");
  
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
    .attr("r", d => {
      if(d.type === 'Chapter') return 18;
      if(d.type === 'Section') return 14;
      if(d.type === 'SubSection') return 10;
      if(d.type === 'KeyPoint') return 12;
      return 8;
    })
    .attr("fill", d => TYPE_COLORS[d.type] || "#60a5fa");
  
  nodeSel.append("text")
    .text(d => {
      const title = d.title || getNodeId(d);
      return title.length > 15 ? title.substring(0, 15) + '...' : title;
    })
    .attr("dy", d => {
      if(d.type === 'Chapter') return 26;
      if(d.type === 'Section') return 22;
      return 18;
    })
    .attr("text-anchor", "middle");
  
  nodeSel.on("mouseover", function(event, d) { showTooltip(event, d); })
    .on("mouseout", hideTooltip)
    .on("click", function(event, d) { showDetail(d, nodes, links); });
  
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
      const sourceId = getNodeId(d.source);
      const targetId = getNodeId(d.target);
      const sourceIdx = nodes.findIndex(n => getNodeId(n) === sourceId);
      const targetIdx = nodes.findIndex(n => getNodeId(n) === targetId);
      const nodesOk = sourceIdx >= 0 && targetIdx >= 0 && nodeOk.has(sourceIdx) && nodeOk.has(targetIdx);
      const relOk = state.enabledRelTypes.has(d.relationName) || state.enabledRelTypes.has(d.label);
      return !relOk || !nodesOk;
    });
    
    linkLabelSel.classed("hidden", (_,i)=> d3.select(linkSel.nodes()[i]).classed("hidden"));
    
    const visibleNodes = nodeSel.nodes().filter(el => !el.classList.contains("hidden")).length;
    const visibleLinks = linkSel.nodes().filter(el => !el.classList.contains("hidden")).length;
    document.getElementById("stats").innerText = 
      `实体：${nodes.length}（可见 ${visibleNodes}） · 关系：${links.length}（可见 ${visibleLinks}）`;
  }
  
  function buildCheckboxes(containerId, items, setRef, onChange){
    const wrap = document.getElementById(containerId);
    wrap.innerHTML = "";
    items.forEach(name => {
      const id = containerId + "_" + name.replace(/\\W+/g,"_");
      const label = document.createElement("label");
      label.style.cssText = "display:flex;gap:6px;align-items:center;font-size:12px;";
      const cb = document.createElement("input");
      cb.type = "checkbox"; cb.checked = setRef.has(name); cb.id = id;
      cb.addEventListener("change", ()=>{
        if(cb.checked) setRef.add(name); else setRef.delete(name);
        onChange();
      });
      const span = document.createElement("span");
      span.textContent = TYPE_LABELS[name] || name;
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
  
  document.getElementById("nodeOnly").addEventListener("change", e=>{ 
    state.nodeOnly = e.target.checked; 
    updateVisibility(); 
  });
  
  document.getElementById("resetNodeSearch").addEventListener("click", ()=>{ 
    document.getElementById("nodeSearch").value=""; 
    state.nodeQuery=""; 
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
    tooltip.style.display = "block";
    tooltip.style.left = (evt.pageX + 14) + "px";
    tooltip.style.top = (evt.pageY + 14) + "px";
    
    let content = `<div style="font-weight:600; margin-bottom:6px; color:#60a5fa;">${esc(d.title||getNodeId(d))}</div>`;
    content += `<div style="margin-bottom:4px;"><span style="color:${TYPE_COLORS[d.type]||'#60a5fa'}">●</span> ${TYPE_LABELS[d.type]||d.type}</div>`;
    
    if(d.type === 'KeyPoint' && d.contentJson) {
      const cj = d.contentJson;
      if(cj.contentRequirement && cj.contentRequirement.length > 0) {
        content += `<div style="margin-top:8px; color:#9ca3af;">内容要求：</div>`;
        content += `<div style="font-size:11px; color:#cbd5e1;">${esc(cj.contentRequirement[0].substring(0, 100))}...</div>`;
      }
    }
    
    tooltip.innerHTML = content;
  }
  function hideTooltip(){ tooltip.style.display="none"; }
  
  function showDetail(d, nodes, links) {
    const panel = document.getElementById("detailPanel");
    const content = document.getElementById("detailContent");
    panel.style.display = "block";
    
    let html = `<div style="font-weight:600; margin-bottom:8px;">${esc(d.title||getNodeId(d))}</div>`;
    html += `<div style="color:${TYPE_COLORS[d.type]||'#60a5fa'}; margin-bottom:8px;">类型: ${TYPE_LABELS[d.type]||d.type}</div>`;
    html += `<div style="font-size:11px; color:#9ca3af; word-break:break-all;">ID: ${esc(getNodeId(d))}</div>`;
    
    // 显示关联节点
    const relatedLinks = links.filter(l => 
      getNodeId(l.source) === getNodeId(d) || getNodeId(l.target) === getNodeId(d)
    );
    
    if(relatedLinks.length > 0) {
      html += `<div style="margin-top:12px; color:#9ca3af;">关联节点 (${relatedLinks.length}):</div>`;
      html += `<div class="content-box">`;
      relatedLinks.forEach(l => {
        const otherId = getNodeId(l.source) === getNodeId(d) ? getNodeId(l.target) : getNodeId(l.source);
        const otherNode = nodes.find(n => getNodeId(n) === otherId);
        if(otherNode) {
          const direction = getNodeId(l.source) === getNodeId(d) ? '→' : '←';
          html += `<div class="content-item">
            <span style="color:${TYPE_COLORS[otherNode.type]||'#60a5fa'}">●</span>
            ${direction} ${esc(otherNode.title||otherId)}
            <span style="color:#64748b; font-size:10px;">(${l.relationName||''})</span>
          </div>`;
        }
      });
      html += `</div>`;
    }
    
    // 如果是知识点，显示内容要求
    if(d.type === 'KeyPoint' && d.contentJson && d.contentJson.contentRequirement) {
      html += `<div style="margin-top:12px; color:#9ca3af;">内容要求:</div>`;
      html += `<div class="content-box">`;
      d.contentJson.contentRequirement.forEach((req, i) => {
        html += `<div class="content-item">${i+1}. ${esc(req)}</div>`;
      });
      html += `</div>`;
    }
    
    content.innerHTML = html;
  }
  
  function esc(s){ 
    return (s||"").toString().replace(/[&<>"']/g, m=>({ 
      "&":"&amp;", "<":"&lt;", ">":"&gt;", '"':"&quot;", "'":"&#39;" 
    }[m] || m)); 
  }
  
  document.getElementById("stats").innerText = 
    `实体：${nodes.length} · 关系：${links.length}`;
  updateVisibility();
}

if (document.readyState === 'loading') {
  document.addEventListener('DOMContentLoaded', () => { initSVG(); initializeGraph(); });
} else {
  initSVG(); initializeGraph();
}
</script>
</body>
</html>'''
        
        # 替换数据
        graph_json = json.dumps(graph_data, ensure_ascii=False)
        graph_json_escaped = graph_json.replace('</script>', '<\\/script>')
        html_content = html_template.replace('__GRAPH_DATA__', graph_json_escaped)
        
        # 保存HTML
        with open(self.output_html, 'w', encoding='utf-8') as f:
            f.write(html_content)
        
        print(f"✓ 已生成HTML可视化: {self.output_html}")
    
    def generate_cypher(self, merged_data: Dict[str, Any]):
        """
        生成Neo4j导入脚本(Cypher语句)
        
        Args:
            merged_data: 合并后的数据
        """
        print("\n" + "=" * 60)
        print("生成Neo4j导入脚本")
        print("=" * 60)
        
        cypher_lines = []
        
        # 添加注释头
        cypher_lines.append("// =====================================================")
        cypher_lines.append("// 高中数学人教B版教材知识图谱 - Neo4j导入脚本")
        cypher_lines.append(f"// 生成时间: {datetime.now().isoformat()}")
        cypher_lines.append("// =====================================================")
        cypher_lines.append("")
        
        # 清除旧数据（可选）
        cypher_lines.append("// 清除旧数据（谨慎使用）")
        cypher_lines.append("// MATCH (n) WHERE n.textVersion CONTAINS '人教版（B版）' DETACH DELETE n;")
        cypher_lines.append("")
        
        # 创建约束和索引
        cypher_lines.append("// 创建约束和索引")
        cypher_lines.append("CREATE CONSTRAINT IF NOT EXISTS FOR (c:Chapter) REQUIRE c.identifier IS UNIQUE;")
        cypher_lines.append("CREATE CONSTRAINT IF NOT EXISTS FOR (s:Section) REQUIRE s.identifier IS UNIQUE;")
        cypher_lines.append("CREATE CONSTRAINT IF NOT EXISTS FOR (ss:SubSection) REQUIRE ss.identifier IS UNIQUE;")
        cypher_lines.append("CREATE CONSTRAINT IF NOT EXISTS FOR (kp:KeyPoint) REQUIRE kp.identifier IS UNIQUE;")
        cypher_lines.append("")
        
        # 导入实体
        cypher_lines.append("// =====================================================")
        cypher_lines.append("// 导入实体")
        cypher_lines.append("// =====================================================")
        cypher_lines.append("")
        
        for entity in merged_data['entities']:
            entity_type = entity.get('type', 'Entity')
            identifier = entity.get('identifier', '')
            title = entity.get('title', '').replace('"', '\\"').replace("'", "\\'")
            description = entity.get('description', '').replace('"', '\\"').replace("'", "\\'").replace('\n', '\\n')
            
            # 构建属性
            props = [f'identifier: "{identifier}"', f'title: "{title}"']
            
            if description:
                props.append(f'description: "{description}"')
            
            # 处理contentJson
            if 'contentJson' in entity and entity['contentJson']:
                cj = entity['contentJson']
                for key, value in cj.items():
                    if isinstance(value, str):
                        clean_value = value.replace('"', '\\"').replace("'", "\\'").replace('\n', '\\n')
                        props.append(f'CJ_{key}: "{clean_value}"')
                    elif isinstance(value, list):
                        # 将列表转为JSON字符串
                        list_str = json.dumps(value, ensure_ascii=False).replace('"', '\\"')
                        props.append(f'CJ_{key}: "{list_str}"')
                    elif isinstance(value, (int, float)):
                        props.append(f'CJ_{key}: {value}')
            
            # 添加其他常见属性
            for key in ['subject', 'applicableLevel', 'textVersion', 'Grade']:
                if key in entity and entity[key]:
                    props.append(f'{key}: "{entity[key]}"')
            
            props_str = ', '.join(props)
            cypher_lines.append(f"MERGE (n:{entity_type} {{identifier: \"{identifier}\"}})")
            cypher_lines.append(f"SET n += {{{props_str}}};")
            cypher_lines.append("")
        
        # 导入关系
        cypher_lines.append("// =====================================================")
        cypher_lines.append("// 导入关系")
        cypher_lines.append("// =====================================================")
        cypher_lines.append("")
        
        for relation in merged_data['relations']:
            source = relation.get('source', '')
            target = relation.get('target', '')
            rel_name = relation.get('relationName', 'RELATED').replace(' ', '_').replace('/', '_')
            label = relation.get('label', '').replace('"', '\\"')
            
            cypher_lines.append(f'MATCH (source {{identifier: "{source}"}})')
            cypher_lines.append(f'MATCH (target {{identifier: "{target}"}})')
            cypher_lines.append(f'MERGE (source)-[r:{rel_name}]->(target)')
            cypher_lines.append(f'SET r.label = "{label}";')
            cypher_lines.append("")
        
        # 添加统计查询
        cypher_lines.append("// =====================================================")
        cypher_lines.append("// 验证导入结果")
        cypher_lines.append("// =====================================================")
        cypher_lines.append("// MATCH (n) RETURN labels(n) as type, count(*) as count;")
        cypher_lines.append("// MATCH ()-[r]->() RETURN type(r) as relation, count(*) as count;")
        
        # 保存Cypher脚本
        with open(self.output_cypher, 'w', encoding='utf-8') as f:
            f.write('\n'.join(cypher_lines))
        
        print(f"✓ 已生成Neo4j导入脚本: {self.output_cypher}")
        print(f"  - 实体语句: {len(merged_data['entities'])} 条")
        print(f"  - 关系语句: {len(merged_data['relations'])} 条")
    
    def generate_all(self):
        """生成所有输出"""
        self.load_data()
        merged_data = self.generate_merged_data()
        self.generate_html(merged_data)
        self.generate_cypher(merged_data)
        
        print("\n" + "=" * 60)
        print("✅ 全部生成完成!")
        print("=" * 60)
        print(f"\n输出文件:")
        print(f"  1. 合并数据: {self.output_merged}")
        print(f"  2. HTML可视化: {self.output_html}")
        print(f"  3. Neo4j脚本: {self.output_cypher}")
        print(f"\n使用方法:")
        print(f"  - 浏览器打开HTML文件查看可视化")
        print(f"  - 在Neo4j Browser中运行Cypher脚本导入数据")


def main():
    """主函数"""
    generator = TextbookGraphGenerator()
    generator.generate_all()


if __name__ == '__main__':
    main()
