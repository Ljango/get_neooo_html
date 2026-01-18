#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
启动HTTP服务器，支持远端访问
"""

import http.server
import socketserver
import argparse
import os
from pathlib import Path

from config import PROJECT_ROOT, STATIC_ROOT, DEFAULT_PORT, DEFAULT_HOST


class CustomHTTPRequestHandler(http.server.SimpleHTTPRequestHandler):
    """自定义HTTP请求处理器，支持CORS和更好的错误处理"""
    
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


def start_server(port=None, host=None, directory=None):
    """
    启动HTTP服务器
    
    Args:
        port: 端口号，默认从config读取
        host: 监听地址，默认从config读取
        directory: 服务目录，默认static目录
    """
    if port is None:
        port = DEFAULT_PORT
    if host is None:
        host = DEFAULT_HOST
    if directory is None:
        directory = STATIC_ROOT
    
    os.chdir(directory)
    
    handler = CustomHTTPRequestHandler
    
    with socketserver.TCPServer((host, port), handler) as httpd:
        print("="*60)
        print("🌐 知识图谱可视化服务器")
        print("="*60)
        print(f"📁 服务目录: {directory}")
        print(f"🌍 监听地址: {host}:{port}")
        print(f"🔗 本地访问: http://localhost:{port}")
        print(f"🌐 外部访问: http://<服务器IP>:{port}")
        print("="*60)
        print("按 Ctrl+C 停止服务器")
        print("="*60)
        
        try:
            httpd.serve_forever()
        except KeyboardInterrupt:
            print("\n\n服务器已停止")


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
