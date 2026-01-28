# 数学数据迁移工具使用说明

## 功能说明

`migrate_math_data.py` 脚本用于从本地 graphV0 数据库导出所有数学相关的节点和边，并导入到远程测试环境的 Neo4j 数据库中。

## 支持的数学标签

- `GaoZhongShuXue` (高中数学)
- `YiJiaoShuXue` (义教数学)

## 使用方法

### 1. 基本使用（导出并导入）

```bash
python3 scripts/migrate_math_data.py
```

这会：
1. 连接到本地 graphV0 数据库
2. 导出所有数学相关的节点和边
3. 连接到远程测试环境数据库
4. 导入数据到远程数据库

### 2. 指定导出目录

```bash
python3 scripts/migrate_math_data.py --export-dir ./exported_data
```

数据会被保存到指定目录的 JSON 文件中：
- `math_nodes.json` - 节点数据（按标签分组）
- `math_relationships.json` - 关系数据

### 3. 从已导出的文件导入

如果之前已经导出过数据，可以使用 `--skip-export` 参数跳过导出步骤：

```bash
python3 scripts/migrate_math_data.py --skip-export --export-dir ./exported_data
```

### 4. 指定环境配置文件

```bash
python3 scripts/migrate_math_data.py --env .env.prod
```

## 环境配置

脚本会从 `.env` 文件中读取以下配置：

### 本地环境（导出源）
- `DB_SCHEME` - 连接协议（默认: bolt）
- `DB_HOST` - 主机地址（默认: localhost）
- `DB_PORT` - 端口（默认: 7687）
- `DB_USER` - 用户名（默认: neo4j）
- `DB_PASSWORD` - 密码
- `DB_NAME` - 数据库名（默认: graphV0）

### 远程测试环境（导入目标）
- `NEO4J_TEST_URI` - 连接 URI（默认: neo4j://10.50.134.39:30218）
- `NEO4J_TEST_USER` - 用户名（默认: neo4j）
- `NEO4J_TEST_PASSWORD` - 密码
- `NEO4J_TEST_DATABASE` - 数据库名（默认: neo4j）

## 工作流程

1. **连接数据库**
   - 验证本地和远程数据库连接

2. **导出数据**
   - 查询所有带有数学标签的节点
   - 查询所有数学节点之间的关系
   - （可选）保存到 JSON 文件

3. **导入数据**
   - 导入节点到远程数据库（保持原有标签）
   - 导入关系到远程数据库（保持原有关系类型和属性）

## 注意事项

1. **数据覆盖**: 脚本使用 `MERGE` 操作，如果节点已存在（基于 identifier），会更新其属性
2. **关系匹配**: 关系导入会匹配源节点和目标节点的 identifier，如果节点不存在，关系会创建失败
3. **性能**: 大量数据导入可能需要较长时间，脚本会显示进度信息
4. **错误处理**: 导入失败的关系会记录但不会中断整个流程

## 故障排查

### 连接失败
- 检查 `.env` 文件中的连接配置是否正确
- 确认本地和远程数据库服务是否运行
- 检查网络连接和防火墙设置

### 导入失败
- 检查远程数据库是否有足够的空间
- 查看错误日志了解具体失败原因
- 确认节点 identifier 是否唯一且有效

## 示例输出

```
============================================================
📦 数学数据迁移工具
============================================================

📊 迁移配置:
   本地: bolt://localhost:7687 (数据库: graphV0)
   远程: neo4j://10.50.134.39:30218 (数据库: neo4j)
   数学标签: GaoZhongShuXue, YiJiaoShuXue
✅ 本地数据库连接成功
✅ 远程数据库连接成功

🔄 开始导出数学节点...
   查询标签: GaoZhongShuXue...
   ✓ GaoZhongShuXue: 1234 个节点
   查询标签: YiJiaoShuXue...
   ✓ YiJiaoShuXue: 567 个节点

📊 总计导出 1801 个节点

🔄 开始导出数学关系...
   查询标签: GaoZhongShuXue 的关系...
   ✓ GaoZhongShuXue: 2345 个关系
   查询标签: YiJiaoShuXue 的关系...
   ✓ YiJiaoShuXue: 890 个关系

📊 总计导出 3235 个关系

🔄 开始导入节点到远程数据库...
   导入标签: GaoZhongShuXue (1234 个节点)...
     已导入 100 个节点...
     已导入 200 个节点...
   ...
   ✓ GaoZhongShuXue: 1234/1234 个节点导入成功
   ...

🔄 开始导入关系到远程数据库...
📊 导入结果: 3235 个成功, 0 个失败

============================================================
✅ 迁移完成！
============================================================
```
