# 知识图谱可视化系统 Docker 镜像
# 多阶段构建，生成轻量级生产镜像

FROM python:3.11-slim as builder

WORKDIR /app

# 安装构建依赖
RUN pip install --no-cache-dir --upgrade pip

# 复制并安装Python依赖
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 生产镜像
FROM python:3.11-slim

WORKDIR /app

# 从builder阶段复制已安装的包
COPY --from=builder /usr/local/lib/python3.11/site-packages /usr/local/lib/python3.11/site-packages

# 复制项目文件
COPY manage.py .
COPY src/ ./src/
COPY templates/ ./templates/
COPY static/ ./static/
COPY scripts/ ./scripts/
COPY 图谱数据/ ./图谱数据/

# 创建非root用户
RUN useradd -m -u 1000 appuser && \
    chown -R appuser:appuser /app

USER appuser

# 暴露端口
EXPOSE 8888 8889

# 健康检查
HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 \
    CMD curl -f http://localhost:8888/ || exit 1

# 默认启动HTTP服务器
CMD ["python3", "manage.py", "serve", "--host", "0.0.0.0", "--port", "8888"]
