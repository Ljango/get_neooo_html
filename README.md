# 知识图谱可视化系统

多学科知识图谱数据可视化平台，支持生成交互式HTML图谱、Neo4j数据导入和数据质量管理。

## 核心功能

- **多学科支持**：覆盖18个学科（高中9个、义教9个）
- **交互式可视化**：基于D3.js的知识图谱可视化
- **统一管理工具**：`manage.py` 提供简洁的命令行接口
- **Neo4j集成**：支持本地和测试环境数据导入
- **数据规范化**：自动检测和修复数据格式问题
- **Docker部署**：支持容器化一键部署

## 项目结构

```
get_neooo_html/
├── manage.py                # 统一管理入口（推荐使用）
├── src/                     # 核心源代码
│   ├── config.py           # 统一配置文件
│   ├── graph_generator.py  # 图谱生成器
│   ├── neo4j_importer.py   # Neo4j数据导入
│   ├── neo4j_query_api.py  # Neo4j查询API
│   ├── update_index.py     # 更新导航页面
│   └── start_server.py     # HTTP服务器
├── scripts/                 # 工具脚本
│   ├── data_normalizer.py  # 数据规范化工具
│   ├── json2csv.py         # 数据导出Excel
│   ├── data_analyzer.py    # 数据质量分析
│   └── cypher/             # Cypher查询脚本
├── templates/               # HTML模板
│   └── graph_template.html
├── static/                  # 生成的HTML文件
├── 图谱数据/                # 原始数据（JSON格式）
├── docs/                    # 文档
└── logs/                    # 日志文件
```

## 快速开始

### 1. 安装依赖

```bash
pip install -r requirements.txt
```

### 2. 常用命令

```bash
# 查看帮助
python3 manage.py --help

# 列出所有学科
python3 manage.py list

# 生成所有学科图谱
python3 manage.py generate --all

# 生成指定学科
python3 manage.py generate --subject 高中数学

# 更新导航页面
python3 manage.py update-index

# 启动服务器
python3 manage.py serve

# 导入数据到Neo4j
python3 manage.py import --all
python3 manage.py import --subject 高中数学 --target test
```

### 3. 一键同步（推荐）

```bash
# 同步指定学科（生成HTML + 更新索引）
python3 manage.py sync --subject 高中数学

# 同步所有学科
python3 manage.py sync --all
```

### 4. 访问系统

启动服务器后访问：http://localhost:8888

## 数据规范化工具

检查和修复数据格式问题：

```bash
# 检查所有问题
python3 scripts/data_normalizer.py --check

# 预览修复操作
python3 scripts/data_normalizer.py --fix --dry-run

# 执行修复
python3 scripts/data_normalizer.py --fix
```

## 数据格式规范

### 学科目录命名

格式：`{学段}{学科}-v{版本}`

示例：`高中数学-v1`、`义教物理89全册-v2`

### 实体文件

放在 `图谱数据/{学科}/entities/` 目录，文件名使用PascalCase：

```json
[
  {
    "identifier": "urn:jy:math:SB0201:OB06:Chapter:1",
    "type": "Chapter",
    "title": "第一章 集合与常用逻辑用语",
    "description": "",
    "contentJson": {
      "academicTerm": "高中",
      "edition": "人教版（B版）"
    }
  }
]
```

### 关系文件

放在 `图谱数据/{学科}/relations/` 目录：

```json
[
  {
    "relationName": "chapterHasSection",
    "label": "包含节 / hasSection",
    "source": "urn:jy:math:SB0201:OB06:Chapter:1",
    "target": "urn:jy:math:SB0201:OB06:Section:1"
  }
]
```

## Neo4j配置

创建 `.env` 文件：

```bash
# 本地环境
NEO4J_URI=bolt://localhost:7687
DB_USER=neo4j
DB_PASSWORD=your_password
DB_NAME=neo4j

# 测试环境（可选）
NEO4J_TEST_URI=bolt://test-server:7687
DB_TEST_USER=neo4j
DB_TEST_PASSWORD=test_password
DB_TEST_NAME=graphV0
```

## Docker部署

```bash
# 构建并启动
docker-compose up -d

# 启动包含Neo4j
docker-compose --profile neo4j up -d

# 启动API服务
docker-compose --profile api up -d
```

## 数据统计

| 指标 | 数值 |
|-----|------|
| 学科数量 | 18个 |
| 总实体数 | 6,083个 |
| 总关系数 | 24,207条 |
| 实体类型 | ~50种 |

## 文档

- [开发规范](docs/开发规范.md) - 代码和数据规范
- [数据格式说明](docs/数据格式说明.md) - JSON数据格式
- [部署指南](docs/DEPLOY.md) - 系统部署说明
- [架构说明](docs/架构说明.md) - 项目架构

## 添加新学科

1. 在 `src/config.py` 的 `SUBJECT_CONFIG` 中添加配置
2. 准备数据文件到 `图谱数据/{学科目录}/`
3. 运行 `python3 manage.py sync --subject {学科名}`

## 许可证

本项目仅供学习和研究使用。
