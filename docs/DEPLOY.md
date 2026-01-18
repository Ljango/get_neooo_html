# 部署指南

本文档介绍如何将知识图谱可视化服务部署到远端服务器，供外部访问。

## 方案一：直接运行Python服务器（简单快速）

### 1. 在服务器上运行

```bash
# 进入项目目录
cd /path/to/get_neooo_html

# 使用统一管理工具（推荐）
python3 manage.py serve --host 0.0.0.0 --port 8888

# 或使用快速部署脚本
./deploy.sh 8888
```

### 2. 配置防火墙

**Ubuntu/Debian:**
```bash
# 允许8888端口
sudo ufw allow 8888/tcp
sudo ufw reload
```

**CentOS/RHEL:**
```bash
# 允许8888端口
sudo firewall-cmd --permanent --add-port=8888/tcp
sudo firewall-cmd --reload
```

**云服务器（阿里云/腾讯云/AWS等）:**
- 在控制台的安全组中添加入站规则，开放8888端口

### 3. 后台运行（使用nohup）

```bash
# 后台运行并保存日志
nohup python3 manage.py serve --host 0.0.0.0 --port 8888 > server.log 2>&1 &

# 查看进程
ps aux | grep manage.py

# 停止服务
pkill -f "manage.py serve"
```

### 4. 使用systemd（推荐生产环境）

创建服务文件 `/etc/systemd/system/knowledge-graph.service`:

```ini
[Unit]
Description=Knowledge Graph Visualization Server
After=network.target

[Service]
Type=simple
User=your_username
WorkingDirectory=/path/to/get_neooo_html
ExecStart=/usr/bin/python3 /path/to/get_neooo_html/manage.py serve --host 0.0.0.0 --port 8888
Restart=always
RestartSec=10

[Install]
WantedBy=multi-user.target
```

启动服务：
```bash
sudo systemctl daemon-reload
sudo systemctl enable knowledge-graph
sudo systemctl start knowledge-graph
sudo systemctl status knowledge-graph
```

---

## 方案二：使用Nginx反向代理（推荐生产环境）

### 1. 安装Nginx

```bash
# Ubuntu/Debian
sudo apt update && sudo apt install nginx

# CentOS/RHEL
sudo yum install nginx
```

### 2. 配置Nginx

创建配置文件 `/etc/nginx/sites-available/knowledge-graph`:

```nginx
server {
    listen 80;
    server_name your-domain.com;  # 替换为您的域名或IP

    # 静态文件目录
    root /path/to/get_neooo_html/static;
    index index.html;

    # 日志
    access_log /var/log/nginx/knowledge-graph-access.log;
    error_log /var/log/nginx/knowledge-graph-error.log;

    location / {
        try_files $uri $uri/ =404;
        
        # 添加CORS头
        add_header Access-Control-Allow-Origin *;
        add_header Access-Control-Allow-Methods 'GET, OPTIONS';
        
        # 缓存控制
        add_header Cache-Control "no-cache, no-store, must-revalidate";
    }

    # 支持HTML5路由（单页应用）
    location ~* \.(html)$ {
        add_header Cache-Control "no-cache";
    }

    # 静态资源缓存
    location ~* \.(js|css|png|jpg|jpeg|gif|ico|svg)$ {
        expires 1y;
        add_header Cache-Control "public, immutable";
    }
}
```

### 3. 启用配置

```bash
# 创建符号链接
sudo ln -s /etc/nginx/sites-available/knowledge-graph /etc/nginx/sites-enabled/

# 测试配置
sudo nginx -t

# 重启Nginx
sudo systemctl restart nginx
```

### 4. 配置SSL（可选，使用Let's Encrypt）

```bash
# 安装certbot
sudo apt install certbot python3-certbot-nginx

# 获取SSL证书
sudo certbot --nginx -d your-domain.com

# 自动续期
sudo certbot renew --dry-run
```

---

## 方案三：使用内网穿透（本地开发测试）

### 1. 使用ngrok

```bash
# 安装ngrok
# macOS: brew install ngrok
# Linux: 下载 https://ngrok.com/download

# 启动隧道
ngrok http 8888
```

### 2. 使用frp（自建服务器）

```bash
# 客户端配置 frpc.ini
[common]
server_addr = your-server-ip
server_port = 7000

[knowledge-graph]
type = tcp
local_ip = 127.0.0.1
local_port = 8888
remote_port = 8888
```

---

## 方案四：Docker部署

### 1. 创建Dockerfile

```dockerfile
FROM python:3.9-slim

WORKDIR /app

COPY . .

EXPOSE 8888

CMD ["python3", "manage.py", "serve", "--host", "0.0.0.0", "--port", "8888"]
```

### 2. 构建和运行

```bash
# 构建镜像
docker build -t knowledge-graph .

# 运行容器
docker run -d \
  --name knowledge-graph \
  -p 8888:8888 \
  --restart unless-stopped \
  knowledge-graph
```

### 3. 使用Docker Compose

创建 `docker-compose.yml`:

```yaml
version: '3.8'

services:
  web:
    build: .
    ports:
      - "8888:8888"
    volumes:
      - ./static:/app/static
      - ./图谱数据:/app/图谱数据
    restart: unless-stopped
```

运行：
```bash
docker-compose up -d
```

---

## 安全建议

1. **使用HTTPS**: 生产环境务必配置SSL证书
2. **限制访问**: 使用Nginx的`allow/deny`限制IP访问
3. **认证保护**: 如需密码保护，可使用Nginx的`auth_basic`
4. **防火墙**: 只开放必要端口
5. **定期更新**: 保持系统和依赖包更新

### Nginx密码保护示例

```bash
# 创建密码文件
sudo apt install apache2-utils
sudo htpasswd -c /etc/nginx/.htpasswd username

# 在Nginx配置中添加
auth_basic "Restricted Access";
auth_basic_user_file /etc/nginx/.htpasswd;
```

---

## 性能优化

1. **启用Gzip压缩**（Nginx配置）:
```nginx
gzip on;
gzip_types text/html text/css application/javascript application/json;
```

2. **使用CDN**: 将静态资源托管到CDN

3. **缓存策略**: 合理设置静态资源缓存时间

---

## 故障排查

### 无法访问

1. 检查防火墙是否开放端口
2. 检查服务器安全组规则
3. 检查服务是否运行: `ps aux | grep manage.py`
4. 检查端口是否被占用: `netstat -tulpn | grep 8888`

### 查看日志

```bash
# Python服务器日志
tail -f server.log

# Nginx日志
sudo tail -f /var/log/nginx/knowledge-graph-access.log
sudo tail -f /var/log/nginx/knowledge-graph-error.log

# Systemd日志
sudo journalctl -u knowledge-graph -f
```

---

## 快速启动脚本

项目已包含 `deploy.sh` 快速部署脚本：

```bash
chmod +x deploy.sh
./deploy.sh 8888
```

该脚本会：
1. 检查Python环境
2. 检查端口占用
3. 启动服务器（使用 `manage.py serve`）
