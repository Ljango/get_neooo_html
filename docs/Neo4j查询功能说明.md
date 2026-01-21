# Neo4j 章节查询功能说明

## 功能概述

新增的Neo4j章节查询功能允许用户：
1. 选择学科和章节
2. 查询章节相关的知识子图
3. 查找从章节出发的最长路径
4. 通过可视化图谱展示查询结果

## 架构说明

### 后端 API 服务

**文件**: `src/neo4j_query_api.py`

提供RESTful API接口：

- `GET /api/subjects` - 获取所有学科列表
- `GET /api/chapters?subject=<学科名>` - 获取指定学科的章节列表
- `GET /api/query/subgraph?subject=<学科名>&chapter_id=<章节ID>` - 查询章节子图
- `GET /api/query/longest_path?subject=<学科名>&chapter_id=<章节ID>` - 查询最长路径

**技术实现**:
- 使用Neo4j Python驱动连接数据库
- 支持APOC插件（可选，用于高性能子图查询）
- 提供fallback查询方案（不依赖APOC）
- 使用HTTP服务器提供API接口
- 支持CORS跨域请求

### 前端查询页面

**文件**: `static/chapter_query.html`

功能特性：
- 响应式布局，左侧控制面板 + 右侧可视化区域
- 基于D3.js的力导向图可视化
- 支持拖拽、缩放等交互
- 实时查询和结果展示
- 最长路径列表展示

## 使用指南

### 1. 准备工作

确保已导入数据到Neo4j：

```bash
# 导入单个学科
python3 manage.py import --subject 高中地理

# 导入所有学科
python3 manage.py import --all
```

### 2. 启动服务

需要同时启动两个服务器：

**终端 1 - 启动Web服务器** (端口8888):
```bash
python3 manage.py serve
```

**终端 2 - 启动API服务器** (端口8889):
```bash
python3 manage.py api
```

或者指定端口：
```bash
python3 manage.py api --port 8889 --host 0.0.0.0
```

### 3. 访问查询页面

打开浏览器访问：
- 主页: http://localhost:8888/index.html
- 查询页面: http://localhost:8888/chapter_query.html

或者从主页点击 "🔍 章节知识图谱查询" 按钮进入

### 4. 使用查询功能

1. **选择学科**: 在左侧面板选择要查询的学科
2. **选择章节**: 学科选中后，章节列表会自动加载
3. **查询子图**: 点击"查询子图"按钮，右侧会显示从该章节出发的所有相关节点和关系
4. **查询最长路径**: 点击"最长路径"按钮，显示从章节出发的最长路径列表

### 5. 交互操作

可视化图谱支持：
- **拖拽节点**: 点击并拖动节点调整位置
- **缩放**: 使用鼠标滚轮或右下角的缩放按钮
- **平移**: 按住并拖动空白区域
- **查看详情**: 鼠标悬停在节点上查看工具提示

## 配置说明

### Neo4j 连接配置

编辑 `.env` 文件：

```env
DB_SCHEME=bolt
DB_HOST=localhost
DB_PORT=7687
DB_USER=neo4j
DB_PASSWORD=your_password
DB_NAME=neo4j
```

### API 端口配置

默认端口：
- Web服务器: 8888
- API服务器: 8889

可以通过命令行参数修改：
```bash
python3 manage.py api --port 9000
```

## 查询逻辑说明

### 子图查询

查询策略：
1. 优先使用APOC插件的 `apoc.path.subgraphAll()` 进行高性能查询
2. 如果APOC不可用，使用基础Cypher查询（深度限制1-5层）
3. 返回所有相关的节点和关系

### 最长路径查询

查询逻辑：
1. 从指定章节出发
2. 匹配深度1-10层的所有路径
3. 按路径长度排序，返回最长的10条路径
4. 路径包含节点序列和关系类型

### 数据结构

**节点 (Node)**:
```json
{
  "id": "节点ID",
  "identifier": "业务标识符",
  "title": "节点标题",
  "name": "节点名称",
  "labels": ["标签1", "标签2"],
  "type": "节点类型",
  ...其他属性
}
```

**关系 (Relationship)**:
```json
{
  "id": "关系ID",
  "type": "关系类型",
  "start": "起始节点ID",
  "end": "目标节点ID",
  "properties": {
    "relationName": "关系名称",
    ...其他属性
  }
}
```

## 故障排查

### API服务器无法启动

**问题**: `neo4j驱动未安装`

**解决**:
```bash
pip install neo4j python-dotenv
```

### 无法连接Neo4j

**问题**: `Failed to connect to Neo4j`

**检查**:
1. Neo4j服务是否运行
2. `.env` 配置是否正确
3. 防火墙是否阻止连接
4. Neo4j用户名密码是否正确

### 查询无结果

**问题**: 查询返回空结果

**原因**:
1. 数据未导入到Neo4j
2. 章节ID不正确
3. 学科标签配置错误

**解决**:
```bash
# 重新导入数据
python3 manage.py import --subject 高中地理 --clear
```

### CORS 错误

**问题**: 浏览器提示跨域错误

**解决**: API服务器已配置CORS，确保：
1. API服务器正在运行
2. 前端页面通过Web服务器访问（不是直接打开HTML文件）

## 性能优化建议

### 1. 安装 APOC 插件

APOC插件可以显著提升子图查询性能：

```bash
# Neo4j Desktop: 在插件管理中安装APOC
# Docker部署: 添加环境变量
NEO4J_PLUGINS=["apoc"]
```

### 2. 创建索引

为常用查询字段创建索引：

```cypher
// 为每个学科标签创建identifier索引
CREATE INDEX chapter_identifier_<学科标签> FOR (c:Chapter:<学科标签>) ON (c.identifier);
```

### 3. 限制查询深度

对于大型图谱，限制查询深度可以提高响应速度：
- 子图查询: 最大深度5层
- 最长路径: 最大深度10层

## 扩展开发

### 添加新的查询类型

在 `src/neo4j_query_api.py` 中添加新方法：

```python
def query_custom(self, subject_name, params):
    """自定义查询"""
    query = """
    // 你的Cypher查询
    """
    with self.driver.session(database=self.database) as session:
        result = session.run(query, **params)
        # 处理结果
        return data
```

在 `APIRequestHandler.do_GET()` 中添加路由：

```python
elif parsed_path.path == '/api/query/custom':
    result = self.query_handler.query_custom(subject, params)
    self._send_json_response(result)
```

### 自定义可视化

修改 `static/chapter_query.html` 中的 `visualizeGraph()` 函数：

```javascript
function visualizeGraph(data) {
    // 自定义节点样式
    node.append('circle')
        .attr('r', d => customSize(d))
        .attr('fill', d => customColor(d));
    
    // 自定义连线样式
    link.attr('stroke', d => customLinkColor(d));
}
```

## 相关文档

- [架构说明.md](./架构说明.md) - 系统整体架构
- [数据格式说明.md](./数据格式说明.md) - 数据格式规范
- [README.md](../README.md) - 项目概览

## 技术栈

- **后端**: Python 3.7+, Neo4j Python Driver
- **前端**: HTML5, D3.js v7, Vanilla JavaScript
- **数据库**: Neo4j 4.0+
- **API**: RESTful HTTP API
- **可视化**: D3.js 力导向图

## 更新日志

### v1.0.0 (2026-01-20)
- ✨ 初始版本
- 🔍 支持章节子图查询
- 📊 支持最长路径查询
- 🎨 D3.js可视化展示
- 🚀 RESTful API接口
- 📱 响应式布局设计
