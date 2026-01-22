#!/bin/bash
# 知识图谱数据审校系统 - 生产环境启动脚本
# 
# 使用方法:
#   ./scripts/start_production.sh              # 启动服务
#   ./scripts/start_production.sh --init-db    # 首次启动（初始化数据库）
#   ./scripts/start_production.sh stop         # 停止服务
#   ./scripts/start_production.sh restart      # 重启服务
#   ./scripts/start_production.sh status       # 查看状态

set -e

# 配置
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"
LOG_DIR="$PROJECT_DIR/logs"
PID_FILE="$LOG_DIR/server.pid"
LOG_FILE="$LOG_DIR/server.log"

# 默认配置
HOST="${HOST:-0.0.0.0}"
PORT="${PORT:-8011}"

# 颜色输出
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# 日志函数
log_info() {
    echo -e "${GREEN}[INFO]${NC} $1"
}

log_warn() {
    echo -e "${YELLOW}[WARN]${NC} $1"
}

log_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# 创建日志目录
mkdir -p "$LOG_DIR"

# 检查环境
check_environment() {
    log_info "检查运行环境..."
    
    # 检查Python
    if ! command -v python3 &> /dev/null; then
        log_error "未找到 Python3，请先安装"
        exit 1
    fi
    
    # 检查依赖
    cd "$PROJECT_DIR"
    if ! python3 -c "import fastapi" &> /dev/null; then
        log_warn "依赖未安装，正在安装..."
        pip3 install -r requirements.txt
    fi
    
    # 检查.env文件
    if [ ! -f "$PROJECT_DIR/.env" ]; then
        log_warn ".env 文件不存在，使用默认配置"
        log_warn "建议复制 docker/env.example 为 .env 并修改配置"
    fi
    
    log_info "环境检查完成"
}

# 启动服务
start_server() {
    local init_db_flag=""
    
    # 检查是否需要初始化数据库
    if [[ "$1" == "--init-db" ]]; then
        init_db_flag="--init-db"
        log_warn "将初始化数据库（如果数据库已存在，会先备份）"
    fi
    
    # 检查是否已经在运行
    if [ -f "$PID_FILE" ]; then
        local pid=$(cat "$PID_FILE")
        if ps -p "$pid" > /dev/null 2>&1; then
            log_warn "服务已在运行 (PID: $pid)"
            return 0
        fi
        rm -f "$PID_FILE"
    fi
    
    log_info "启动知识图谱数据审校系统..."
    
    cd "$PROJECT_DIR"
    
    # 设置生产环境变量
    export PRODUCTION=true
    
    # 后台启动服务
    nohup python3 server.py \
        --host "$HOST" \
        --port "$PORT" \
        --production \
        $init_db_flag \
        >> "$LOG_FILE" 2>&1 &
    
    local pid=$!
    echo "$pid" > "$PID_FILE"
    
    # 等待服务启动
    sleep 2
    
    if ps -p "$pid" > /dev/null 2>&1; then
        log_info "服务启动成功!"
        echo ""
        echo "=============================================="
        echo "  知识图谱数据审校系统已启动"
        echo "=============================================="
        echo "  访问地址: http://$HOST:$PORT"
        echo "  登录页面: http://$HOST:$PORT/static/app/login.html"
        echo "  API文档:  http://$HOST:$PORT/docs"
        echo "  健康检查: http://$HOST:$PORT/health"
        echo ""
        echo "  PID文件:  $PID_FILE"
        echo "  日志文件: $LOG_FILE"
        echo "=============================================="
    else
        log_error "服务启动失败，请检查日志: $LOG_FILE"
        exit 1
    fi
}

# 停止服务
stop_server() {
    if [ ! -f "$PID_FILE" ]; then
        log_warn "PID文件不存在，服务可能未运行"
        return 0
    fi
    
    local pid=$(cat "$PID_FILE")
    
    if ! ps -p "$pid" > /dev/null 2>&1; then
        log_warn "进程 $pid 不存在"
        rm -f "$PID_FILE"
        return 0
    fi
    
    log_info "停止服务 (PID: $pid)..."
    kill "$pid"
    
    # 等待进程结束
    local wait_count=0
    while ps -p "$pid" > /dev/null 2>&1 && [ $wait_count -lt 10 ]; do
        sleep 1
        ((wait_count++))
    done
    
    if ps -p "$pid" > /dev/null 2>&1; then
        log_warn "进程未正常退出，强制终止..."
        kill -9 "$pid"
    fi
    
    rm -f "$PID_FILE"
    log_info "服务已停止"
}

# 查看状态
show_status() {
    echo "=============================================="
    echo "  知识图谱数据审校系统 - 状态"
    echo "=============================================="
    
    if [ -f "$PID_FILE" ]; then
        local pid=$(cat "$PID_FILE")
        if ps -p "$pid" > /dev/null 2>&1; then
            echo "  状态: 运行中"
            echo "  PID:  $pid"
            
            # 尝试获取健康检查
            if command -v curl &> /dev/null; then
                local health=$(curl -s "http://localhost:$PORT/health" 2>/dev/null)
                if [ -n "$health" ]; then
                    echo "  健康: $health"
                fi
            fi
        else
            echo "  状态: 已停止 (PID文件存在但进程不存在)"
        fi
    else
        echo "  状态: 未运行"
    fi
    
    echo ""
    echo "  日志文件: $LOG_FILE"
    echo "=============================================="
}

# 重启服务
restart_server() {
    stop_server
    sleep 1
    start_server "$@"
}

# 查看日志
show_logs() {
    if [ -f "$LOG_FILE" ]; then
        tail -f "$LOG_FILE"
    else
        log_warn "日志文件不存在: $LOG_FILE"
    fi
}

# 主入口
case "${1:-start}" in
    start)
        check_environment
        start_server "$2"
        ;;
    stop)
        stop_server
        ;;
    restart)
        restart_server "$2"
        ;;
    status)
        show_status
        ;;
    logs)
        show_logs
        ;;
    *)
        echo "使用方法: $0 {start|stop|restart|status|logs} [--init-db]"
        echo ""
        echo "命令说明:"
        echo "  start      启动服务（默认）"
        echo "  stop       停止服务"
        echo "  restart    重启服务"
        echo "  status     查看服务状态"
        echo "  logs       实时查看日志"
        echo ""
        echo "选项:"
        echo "  --init-db  首次启动时初始化数据库"
        exit 1
        ;;
esac
