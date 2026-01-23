#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
启动HTTP服务器，支持远端访问
支持多线程并发处理请求
"""

import http.server
import socketserver
import argparse
from pathlib import Path

from config import PROJECT_ROOT, STATIC_ROOT, DEFAULT_PORT, DEFAULT_HOST


class CustomHTTPRequestHandler(http.server.SimpleHTTPRequestHandler):
    """自定义HTTP请求处理器，支持CORS和更好的错误处理"""
    
    def __init__(self, *args, directory=None, **kwargs):
        """初始化处理器，指定服务目录"""
        super().__init__(*args, directory=directory, **kwargs)
    
    def end_headers(self):
        # 添加CORS头，允许跨域访问
        self.send_header('Access-Control-Allow-Origin', '*')
        self.send_header('Access-Control-Allow-Methods', 'GET, OPTIONS')
        self.send_header('Access-Control-Allow-Headers', '*')
        self.send_header('Cache-Control', 'no-cache, no-store, must-revalidate')
        super().end_headers()
    
    def log_message(self, format, *args):
        """自定义日志格式"""
        print(f"[{self.log_date_time_string()}] {format % args}")


class ThreadingHTTPServer(socketserver.ThreadingMixIn, socketserver.TCPServer):
    """支持多线程的HTTP服务器"""
    allow_reuse_address = True
    daemon_threads = True  # 守护线程，主线程退出时自动清理


def start_server(port=None, host=None, directory=None):
    """
    启动HTTP服务器
    
    Args:
        port: 端口号，默认从config读取
        host: 监听地址，默认从config读取
        directory: 服务目录，默认项目根目录（这样 /static/xxx 就能正确映射）
    """
    if port is None:
        port = DEFAULT_PORT
    if host is None:
        host = DEFAULT_HOST
    if directory is None:
        # 改为服务项目根目录，而不是 static/ 子目录
        # 这样访问 /static/xxx.html 就能正确找到 static/xxx.html
        directory = PROJECT_ROOT
    
    # 不切换工作目录，通过 directory 参数指定服务目录
    directory = str(directory)  # 确保是字符串路径
    
    # 创建带目录参数的handler工厂函数
    def handler_factory(*args, **kwargs):
        return CustomHTTPRequestHandler(*args, directory=directory, **kwargs)
    
    # 使用多线程服务器支持并发
    httpd = ThreadingHTTPServer((host, port), handler_factory)
    
    print("="*60)
    print("🌐 知识图谱可视化服务器")
    print("="*60)
    print(f"📁 服务目录: {directory}")
    print(f"🌍 监听地址: {host}:{port}")
    print(f"🔗 本地访问: http://localhost:{port}")
    print(f"🌐 外部访问: http://<服务器IP>:{port}")
    print(f"⚡ 并发模式: 多线程")
    print("="*60)
    print("按 Ctrl+C 停止服务器")
    print("="*60)
    
    try:
        httpd.serve_forever()
    except KeyboardInterrupt:
        print("\n\n服务器已停止")
    finally:
        httpd.shutdown()


def main():
    parser = argparse.ArgumentParser(description='启动知识图谱可视化服务器')
    parser.add_argument('-p', '--port', type=int, default=DEFAULT_PORT,
                       help=f'端口号 (默认: {DEFAULT_PORT})')
    parser.add_argument('-H', '--host', type=str, default=DEFAULT_HOST,
                       help=f'监听地址 (默认: {DEFAULT_HOST}，允许外部访问)')
    parser.add_argument('-d', '--directory', type=str, default=None,
                       help='服务目录 (默认: static目录)')
    
    args = parser.parse_args()
    
    start_server(port=args.port, host=args.host, directory=args.directory)


if __name__ == "__main__":
    main()
