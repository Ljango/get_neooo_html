#!/bin/bash
# 知识图谱可视化服务快速部署脚本

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

echo "=========================================="
echo "🌐 知识图谱可视化服务部署"
echo "=========================================="

# 检查Python
if ! command -v python3 &> /dev/null; then
    echo "❌ 错误: 未找到 python3，请先安装 Python 3"
    exit 1
fi

# 检查端口是否被占用
PORT=${1:-8888}
if lsof -Pi :$PORT -sTCP:LISTEN -t >/dev/null 2>&1 ; then
    echo "⚠️  警告: 端口 $PORT 已被占用"
    echo "请使用其他端口: ./deploy.sh 8889"
    exit 1
fi

# 启动服务器（使用统一管理工具）
echo "🚀 启动服务器..."
echo "📁 目录: $SCRIPT_DIR/static"
echo "🌍 端口: $PORT"
echo "🔗 访问地址: http://0.0.0.0:$PORT"
echo ""
echo "按 Ctrl+C 停止服务器"
echo "=========================================="

python3 manage.py serve --host 0.0.0.0 --port $PORT
