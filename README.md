# 知识图谱可视化项目

多学科知识图谱数据可视化平台，支持生成交互式HTML图谱和Neo4j数据导入。

## ✨ 核心功能

- **多学科支持**：支持高中数学、高中物理、义教数学等18个学科
- **交互式可视化**：基于D3.js的知识图谱可视化
- **统一管理工具**：`manage.py` 提供简洁的命令行接口
- **Neo4j集成**：支持本地和测试环境数据导入
- **数据规范化**：自动检测和修复数据格式问题
- **自动导航**：自动生成导航页面

## 📁 项目结构

```
get_neooo_html/
├── manage.py                    # 统一管理入口（推荐使用）
├── src/                         # 核心源代码
│   ├── config.py               # 统一配置文件
│   ├── graph_generator.py      # 图谱生成器
│   ├── neo4j_importer.py       # Neo4j数据导入
│   ├── neo4j_query_api.py      # Neo4j查询API
│   ├── update_index.py         # 更新导航页面
│   └── start_server.py         # HTTP服务器
├── scripts/                     # 工具脚本
│   ├── data_normalizer.py      # 数据规范化工具
│   ├── json2csv.py             # 数据导出Excel
│   └── cypher/                 # Cypher查询脚本
├── templates/                   # HTML模板
│   └── graph_template.html
├── static/                      # 生成的HTML文件
├── 图谱数据/                    # 原始数据（JSON格式）
├── docs/                        # 文档
└── logs/                        # 日志文件
```

## 🚀 快速开始

### 1. 安装依赖

```bash
pip install -r requirements.txt
```

### 2. 生成图谱

```bash
# 列出所有可用学科
python3 manage.py list

# 生成指定学科图谱
python3 manage.py generate --subject 义教数学

# 生成所有学科图谱
python3 manage.py generate --all
```

### 3. 更新导航页面

```bash
python3 manage.py update-index
```

### 4. 启动服务器查看

```bash
# 使用统一管理工具（推荐）
python3 manage.py serve

# 或指定端口
python3 manage.py serve --port 8080
```

访问：http://localhost:8888

## 📖 详细使用说明

### 统一管理工具（推荐）

`manage.py` 提供了所有功能的统一入口：

```bash
# 查看帮助
python3 manage.py --help

# 列出所有可用学科
python3 manage.py list

# 生成图谱
python3 manage.py generate --all              # 生成所有学科
python3 manage.py generate --subject 义教数学  # 生成指定学科

# 更新导航页面
python3 manage.py update-index

# 启动服务器
python3 manage.py serve                      # 默认端口8888
python3 manage.py serve --port 8080          # 指定端口
python3 manage.py serve --host 0.0.0.0       # 允许外部访问
```

### 完整工作流程

```bash
# 1. 准备数据（放在图谱数据/目录下）
# 2. 生成所有图谱
python3 manage.py generate --all

# 3. 更新导航页面
python3 manage.py update-index

# 4. 启动服务器查看
python3 manage.py serve
```

### 添加新学科

1. 在 `src/config.py` 的 `SUBJECT_CONFIG` 中添加配置：
```python
"义教英语": {
    "icon": "📖",
    "display_name": "义教英语",
    "data_dir": "义教英语_数据目录",
    "files": ["义教英语_课标.html"],
    "color": "#3498db"
}
```

2. 运行生成命令：
```bash
python3 manage.py generate --subject 义教英语
python3 manage.py update-index
```

## 📊 数据格式

项目支持多种数据文件格式，详细说明请查看 [docs/数据格式说明.md](docs/数据格式说明.md)

### 实体文件格式

实体文件应放在 `图谱数据/{学科目录}/entities/` 目录下，支持两种格式：

**格式1：直接数组（推荐）**
```json
[
  {
    "identifier": "唯一标识符",
    "type": "实体类型",
    "title": "标题",
    "description": "描述",
    "properties": {
      "自定义字段": "值"
    }
  }
]
```

**格式2：包装对象**
```json
{
  "entities": [
    {
      "identifier": "唯一标识符",
      "type": "实体类型",
      "title": "标题"
    }
  ]
}
```

### 关系文件格式

关系文件应放在 `图谱数据/{学科目录}/relations/` 目录下，支持三种格式：

**格式1：直接数组（推荐）**
```json
[
  {
    "relationName": "关系类型",
    "label": "关系标签",
    "source": "源实体identifier",
    "target": "目标实体identifier"
  }
]
```

**格式2：使用 "relations" 键**
```json
{
  "relations": [
    {
      "relationName": "关系类型",
      "label": "关系标签",
      "source": "源实体identifier",
      "target": "目标实体identifier"
    }
  ]
}
```

**格式3：使用 "relationships" 键**
```json
{
  "relationships": [
    {
      "relationName": "关系类型",
      "label": "关系标签",
      "source": "源实体identifier",
      "target": "目标实体identifier"
    }
  ]
}
```

**注意**：代码会自动检测并支持以上所有格式，无需手动转换。

## 🌐 部署和访问

### 本地访问

```bash
python3 manage.py serve
```

访问：http://localhost:8888

### 远端部署

提供了多种部署方案，详见 [docs/DEPLOY.md](docs/DEPLOY.md)

**快速启动（允许外部访问）：**
```bash
python3 manage.py serve --host 0.0.0.0 --port 8888
```

**后台运行：**
```bash
nohup python3 manage.py serve --host 0.0.0.0 --port 8888 > server.log 2>&1 &
```

**使用systemd（生产环境推荐）：**
详见 [docs/DEPLOY.md](docs/DEPLOY.md)

### 访问地址

- **本地访问**: http://localhost:8888
- **局域网访问**: http://<服务器IP>:8888
- **公网访问**: http://<公网IP>:8888（需配置防火墙和安全组）

## 🔧 Neo4j数据导入

支持将知识图谱数据导入到本地Neo4j数据库，**每个学科会自动打上分类标签**，便于区分和查询。

### 学科分类标签

| 学科 | Neo4j标签 | 说明 |
|------|-----------|------|
| 高中数学 | `GaoZhongShuXue` | 高中数学课标 |
| 高中物理 | `GaoZhongWuLi` | 高中物理课标 |
| 高中化学 | `GaoZhongHuaXue` | 高中化学课标 |
| 高中生物 | `GaoZhongShengWu` | 高中生物课标 |
| 义教数学 | `YiJiaoShuXue` | 义务教育数学 |
| 义教物理 | `YiJiaoWuLi` | 义务教育物理 |
| 义教化学 | `YiJiaoHuaXue` | 义务教育化学 |
| 义教地理 | `YiJiaoDiLi` | 义务教育地理 |
| 义教生物 | `YiJiaoShengWu` | 义务教育生物 |

### 方式1：使用manage.py导入（推荐）

```bash
# 导入指定学科到Neo4j
python3 manage.py import --subject 高中数学

# 导入所有学科到Neo4j
python3 manage.py import --all

# 清除旧数据后重新导入
python3 manage.py import --subject 高中数学 --clear

# 使用其他环境配置文件
python3 manage.py import --subject 高中数学 --env .env.prod
```

### 方式2：使用Cypher脚本

生成图谱时会自动生成Cypher导入脚本：
```bash
# 生成图谱（会自动生成Cypher脚本）
python3 manage.py generate --subject 义教数学

# 在Neo4j Browser中执行生成的脚本
# 文件位置：图谱数据/义教数学_1231/neo4j_import.cypher
```

### Neo4j查询示例

```cypher
# 查询高中数学的所有知识点
MATCH (n:GaoZhongShuXue:KeyPoint) RETURN n LIMIT 100

# 查询义教物理的所有主题
MATCH (n:YiJiaoWuLi:ThemeL1) RETURN n

# 跨学科查询：查找所有学科的核心素养
MATCH (n:CoreLiteracy) RETURN n.subject, n.title

# 查询某学科的完整图谱
MATCH (n:GaoZhongShuXue)-[r]->(m:GaoZhongShuXue) 
RETURN n, r, m LIMIT 500
```

### 环境配置

创建 `.env` 文件配置Neo4j连接：
```bash
NEO4J_URI=bolt://localhost:7687
DB_USER=neo4j
DB_PASSWORD=your_password
DB_NAME=neo4j
```

## 📚 架构说明

详细的架构说明和文件关系，请查看 [docs/架构说明.md](docs/架构说明.md)

## 🛠️ 开发说明

### 项目特点

- **统一配置**：所有配置集中在 `src/config.py`
- **模块化设计**：功能模块清晰分离
- **模板分离**：HTML模板独立存储，易于维护
- **统一入口**：`manage.py` 提供简洁的命令行接口

### 代码组织

- `src/config.py` - 统一配置中心
- `src/graph_generator.py` - 核心图谱生成逻辑
- `templates/graph_template.html` - HTML可视化模板
- `manage.py` - 统一管理入口

## 📝 常见问题

### Q: 如何添加新的实体类型？

A: 在 `src/config.py` 的 `ENTITY_TYPE_CONFIG` 中添加配置。

### Q: 生成的HTML文件在哪里？

A: 在 `static/` 目录下。

### Q: 如何修改图谱样式？

A: 编辑 `templates/graph_template.html` 中的CSS和JavaScript。

### Q: 支持哪些学科？

A: 运行 `python3 manage.py list` 查看所有可用学科。

## 📄 许可证

本项目仅供学习和研究使用。
