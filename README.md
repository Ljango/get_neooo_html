# Neo4j 知识图谱导入工具

多学科知识图谱数据中转平台，专注于 Neo4j 数据的增删改查操作。

## 核心功能

- **多学科支持**：通过目录结构区分不同学科（高中数学、高中物理等）
- **属性扁平化**：自动将嵌套的 `contentJson` 扁平化为 Neo4j 兼容格式
- **完整 CRUD**：提供实体和关系的增删改查 API
- **批量导入**：一键导入所有实体和关系

## 属性扁平化规则

由于 Neo4j 不支持嵌套属性，`contentJson` 中的字段会被扁平化：

| 原始格式 | 扁平化后 |
|---------|---------|
| `contentJson.unit` | `CJ_unit` |
| `contentJson.contentRequirement` | `CJ_contentRequirement` |
| `contentJson.standard` | `CJ_standard` |

**示例：**

```json
// 原始 JSON
{
  "identifier": "urn:jy:math:...",
  "title": "集合的概念与表示",
  "contentJson": {
    "unit": "urn:jy:math:SB0201:OB06:unit:un0001",
    "contentRequirement": ["要求1", "要求2"]
  }
}

// Neo4j 中的属性
{
  "identifier": "urn:jy:math:...",
  "title": "集合的概念与表示",
  "CJ_unit": "urn:jy:math:SB0201:OB06:unit:un0001",
  "CJ_contentRequirement": ["要求1", "要求2"]
}
```

## 目录结构

```
项目根目录/
├── import_data.py          # 导入工具主程序
├── requirements.txt        # Python 依赖
├── env.template            # 环境配置模板
├── .env                    # 实际环境配置（需自行创建）
│
├── 高中数学/               # 学科目录
│   ├── entities/           # 实体 JSON 文件
│   │   ├── Domain.json
│   │   ├── CourseModule.json
│   │   ├── Theme.json
│   │   ├── Topic.json
│   │   ├── Unit.json
│   │   ├── KeyPoint.json
│   │   └── ...
│   └── relations/          # 关系 JSON 文件
│       ├── Theme_Domain_Relations.json
│       ├── CourseModule_Topic_Relations.json
│       └── ...
│
├── 高中物理/               # 另一个学科（未来扩展）
│   ├── entities/
│   └── relations/
│
└── ...
```

## 快速开始

### 1. 安装依赖

```bash
pip install -r requirements.txt
```

### 2. 配置环境

```bash
cp env.template .env
# 编辑 .env，填入 Neo4j 连接信息
```

### 3. 运行导入

```bash
# 使用默认配置（.env + 高中数学）
python import_data.py

# 指定学科
python import_data.py --subject 高中物理

# 使用不同环境配置
python import_data.py --env .env.prod

# 清空后重新导入
python import_data.py --clear
```

## Python API 使用

```python
from import_data import Neo4jImporter

# 初始化
importer = Neo4jImporter(env_file='.env', subject='高中数学')

# === 批量操作 ===
importer.import_all()  # 导入所有数据
importer.clear_database(confirm=True)  # 清空数据库

# === 实体 CRUD ===
# 创建
importer.create_entity('KeyPoint', {
    'identifier': 'urn:jy:math:...',
    'title': '新知识点',
    'contentJson': {
        'unit': 'urn:jy:math:...',
        'contentRequirement': ['要求1', '要求2']
    }
})

# 读取
entity = importer.read_entity('urn:jy:math:...')
print(entity)  # contentJson 已自动还原

# 更新
importer.update_entity('urn:jy:math:...', {
    'title': '更新后的标题',
    'contentJson': {'unit': '新的unit'}
})

# 删除
importer.delete_entity('urn:jy:math:...', detach=True)

# === 关系 CRUD ===
# 创建关系
importer.create_relation(
    source='urn:jy:math:...:unit:un0001',
    target='urn:jy:math:...:keypoint:kp0001',
    relation_type='contains',
    properties={'label': '包含'}
)

# 删除关系
importer.delete_relation(
    source='urn:jy:math:...',
    target='urn:jy:math:...',
    relation_type='contains'  # 可选
)

# === 自定义查询 ===
results = importer.query(
    "MATCH (n:KeyPoint) WHERE n.CJ_unit = $unit RETURN n LIMIT 10",
    {'unit': 'urn:jy:math:SB0201:OB06:unit:un0001'}
)

# 关闭连接
importer.close()
```

## 多学科扩展

添加新学科只需创建对应的目录结构：

```bash
mkdir -p 高中物理/entities 高中物理/relations
# 将实体和关系 JSON 文件放入对应目录
# 运行导入
python import_data.py --subject 高中物理
```

## 数据格式

### 实体文件格式

```json
{
  "entities": [
    {
      "identifier": "唯一标识符",
      "type": "实体类型",
      "title": "标题",
      "description": "描述",
      "contentJson": {
        "自定义字段": "值"
      }
    }
  ]
}
```

### 关系文件格式

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

## 与展示项目的协作

本项目专注于数据导入和基础 CRUD，另一个展示/编辑项目可以：

1. 直接连接同一个 Neo4j 数据库进行数据展示
2. 调用本项目的 API 进行数据修改
3. 或直接使用 Cypher 查询数据

数据流向：
```
JSON 文件 -> [本项目] -> Neo4j <- [展示项目] <- 用户
```

## 部署和访问

### 本地访问

```bash
# 启动本地服务器（仅本机访问）
cd static && python3 -m http.server 8888

# 访问 http://localhost:8888
```

### 远端部署

提供了多种部署方案，详见 [DEPLOY.md](DEPLOY.md)

**快速启动（允许外部访问）：**
```bash
# 使用自定义启动脚本
python3 src/start_server.py -p 8888

# 或指定IP和端口
python3 src/start_server.py -H 0.0.0.0 -p 8888
```

**后台运行：**
```bash
nohup python3 src/start_server.py -p 8888 > server.log 2>&1 &
```

**使用systemd（生产环境推荐）：**
```bash
# 参考 DEPLOY.md 中的systemd配置
sudo systemctl start knowledge-graph
```

### 访问地址

- **本地访问**: http://localhost:8888
- **局域网访问**: http://<服务器IP>:8888
- **公网访问**: http://<公网IP>:8888（需配置防火墙和安全组）
