#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
每日自动备份脚本

功能:
1. 备份所有学科的JSON数据到tar.gz归档
2. 备份SQLite数据库
3. 保留策略: 最近7天的每日备份 + 最近4周的周备份 + 最近12个月的月备份

用法:
    python3 scripts/daily_backup.py

建议添加到crontab:
    0 3 * * * cd /data/get_neooo_html && /usr/bin/python3.11 scripts/daily_backup.py >> /var/log/get_neooo_backup.log 2>&1
"""

import os
import sys
import shutil
import tarfile
import sqlite3
from pathlib import Path
from datetime import datetime, timedelta

# 添加项目路径
sys.path.insert(0, str(Path(__file__).parent.parent / "src"))
from config import PROJECT_ROOT, DATA_ROOT, SUBJECT_CONFIG

# 备份目录
BACKUP_DIR = PROJECT_ROOT / "archive" / "daily_backups"
DB_BACKUP_DIR = BACKUP_DIR / "database"
DATA_BACKUP_DIR = BACKUP_DIR / "data"

# 保留策略
DAILY_KEEP_DAYS = 7      # 保留最近7天的每日备份
WEEKLY_KEEP_WEEKS = 4    # 保留最近4周的周备份
MONTHLY_KEEP_MONTHS = 12 # 保留最近12个月的月备份


def log(message: str):
    """打印带时间戳的日志"""
    timestamp = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    print(f"[{timestamp}] {message}")


def backup_database():
    """备份SQLite数据库"""
    db_path = PROJECT_ROOT / "data" / "review.db"
    if not db_path.exists():
        log(f"数据库不存在: {db_path}")
        return None
    
    DB_BACKUP_DIR.mkdir(parents=True, exist_ok=True)
    
    timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
    backup_file = DB_BACKUP_DIR / f"review_db_{timestamp}.sqlite"
    
    # 使用SQLite的backup功能确保数据一致性
    src_conn = sqlite3.connect(str(db_path))
    dst_conn = sqlite3.connect(str(backup_file))
    
    src_conn.backup(dst_conn)
    
    src_conn.close()
    dst_conn.close()
    
    # 压缩
    gz_file = backup_file.with_suffix('.sqlite.gz')
    import gzip
    with open(backup_file, 'rb') as f_in:
        with gzip.open(gz_file, 'wb') as f_out:
            f_out.writelines(f_in)
    
    backup_file.unlink()  # 删除未压缩的文件
    
    log(f"数据库备份完成: {gz_file.name} ({gz_file.stat().st_size / 1024:.1f} KB)")
    return gz_file


def backup_subject_data(subject_id: str, data_dir: Path):
    """备份单个学科的数据"""
    if not data_dir.exists():
        log(f"  学科数据目录不存在: {data_dir}")
        return None
    
    subject_backup_dir = DATA_BACKUP_DIR / subject_id
    subject_backup_dir.mkdir(parents=True, exist_ok=True)
    
    timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
    backup_file = subject_backup_dir / f"{timestamp}.tar.gz"
    
    # 统计数据
    entities_count = 0
    relations_count = 0
    
    entities_dir = data_dir / "entities"
    relations_dir = data_dir / "relations"
    
    import json
    
    if entities_dir.exists():
        for json_file in entities_dir.glob("*.json"):
            try:
                with open(json_file, 'r', encoding='utf-8') as f:
                    data = json.load(f)
                    entities_count += len(data) if isinstance(data, list) else len(data.get('entities', []))
            except:
                pass
    
    if relations_dir.exists():
        for json_file in relations_dir.glob("*.json"):
            try:
                with open(json_file, 'r', encoding='utf-8') as f:
                    data = json.load(f)
                    relations_count += len(data) if isinstance(data, list) else len(data.get('relations', []))
            except:
                pass
    
    # 创建tar.gz归档
    with tarfile.open(backup_file, "w:gz") as tar:
        # 添加元数据
        import tempfile
        metadata = {
            "subject_id": subject_id,
            "created_at": datetime.now().isoformat(),
            "entities_count": entities_count,
            "relations_count": relations_count,
            "backup_type": "daily_auto"
        }
        
        with tempfile.NamedTemporaryFile(mode='w', suffix='.json', delete=False) as tf:
            json.dump(metadata, tf, ensure_ascii=False, indent=2)
            tf.flush()
            tar.add(tf.name, arcname="metadata.json")
            os.unlink(tf.name)
        
        # 添加entities目录
        if entities_dir.exists():
            for json_file in entities_dir.glob("*.json"):
                tar.add(json_file, arcname=f"entities/{json_file.name}")
        
        # 添加relations目录
        if relations_dir.exists():
            for json_file in relations_dir.glob("*.json"):
                tar.add(json_file, arcname=f"relations/{json_file.name}")
    
    size_mb = backup_file.stat().st_size / 1024 / 1024
    log(f"  {subject_id}: {entities_count}实体, {relations_count}关系 -> {backup_file.name} ({size_mb:.2f}MB)")
    return backup_file


def cleanup_old_backups():
    """清理过期备份"""
    log("清理过期备份...")
    now = datetime.now()
    cleaned_count = 0
    
    # 清理数据库备份
    if DB_BACKUP_DIR.exists():
        for backup_file in DB_BACKUP_DIR.glob("*.gz"):
            file_date = datetime.fromtimestamp(backup_file.stat().st_mtime)
            age_days = (now - file_date).days
            
            # 决定是否保留
            keep = False
            
            # 最近7天: 全部保留
            if age_days <= DAILY_KEEP_DAYS:
                keep = True
            # 7-28天: 保留周一的备份
            elif age_days <= DAILY_KEEP_DAYS + WEEKLY_KEEP_WEEKS * 7:
                if file_date.weekday() == 0:  # 周一
                    keep = True
            # 28天-1年: 保留每月1号的备份
            elif age_days <= 365:
                if file_date.day == 1:
                    keep = True
            
            if not keep:
                backup_file.unlink()
                cleaned_count += 1
    
    # 清理数据备份
    if DATA_BACKUP_DIR.exists():
        for subject_dir in DATA_BACKUP_DIR.iterdir():
            if subject_dir.is_dir():
                for backup_file in subject_dir.glob("*.tar.gz"):
                    file_date = datetime.fromtimestamp(backup_file.stat().st_mtime)
                    age_days = (now - file_date).days
                    
                    keep = False
                    
                    if age_days <= DAILY_KEEP_DAYS:
                        keep = True
                    elif age_days <= DAILY_KEEP_DAYS + WEEKLY_KEEP_WEEKS * 7:
                        if file_date.weekday() == 0:
                            keep = True
                    elif age_days <= 365:
                        if file_date.day == 1:
                            keep = True
                    
                    if not keep:
                        backup_file.unlink()
                        cleaned_count += 1
    
    log(f"已清理 {cleaned_count} 个过期备份")


def get_backup_stats():
    """获取备份统计信息"""
    total_size = 0
    total_files = 0
    
    if BACKUP_DIR.exists():
        for f in BACKUP_DIR.rglob("*"):
            if f.is_file():
                total_size += f.stat().st_size
                total_files += 1
    
    return total_files, total_size


def main():
    """主函数"""
    log("=" * 50)
    log("开始每日自动备份")
    log("=" * 50)
    
    # 确保备份目录存在
    BACKUP_DIR.mkdir(parents=True, exist_ok=True)
    
    # 备份数据库
    log("备份数据库...")
    backup_database()
    
    # 备份所有学科数据
    log("备份学科数据...")
    for subject_id, config in SUBJECT_CONFIG.items():
        data_dir = DATA_ROOT / config['data_dir']
        backup_subject_data(subject_id, data_dir)
    
    # 清理过期备份
    cleanup_old_backups()
    
    # 统计信息
    total_files, total_size = get_backup_stats()
    log(f"备份目录统计: {total_files} 个文件, {total_size / 1024 / 1024:.1f} MB")
    
    log("=" * 50)
    log("每日备份完成")
    log("=" * 50)


if __name__ == "__main__":
    main()
