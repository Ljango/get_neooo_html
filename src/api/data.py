# -*- coding: utf-8 -*-
"""
数据操作API - 仅root可用的数据管理功能
"""

import subprocess
import sys
from datetime import datetime
from typing import Optional, List
from pathlib import Path
from fastapi import APIRouter, Depends, HTTPException, BackgroundTasks
from sqlalchemy.orm import Session

from .database import get_db
from .models import User, DataVersion, VersionStatus
from .schemas import (
    TaskResponse, ResponseBase, VersionInfo, CreateVersionRequest
)
from .deps import require_root, log_operation
from config import SUBJECT_CONFIG, PROJECT_ROOT

router = APIRouter()


def run_script(script_path: str, args: List[str] = None) -> tuple:
    """运行Python脚本并返回输出"""
    cmd = [sys.executable, script_path]
    if args:
        cmd.extend(args)
    
    try:
        result = subprocess.run(
            cmd,
            capture_output=True,
            text=True,
            timeout=300,  # 5分钟超时
            cwd=str(PROJECT_ROOT)
        )
        return result.returncode == 0, result.stdout + result.stderr
    except subprocess.TimeoutExpired:
        return False, "脚本执行超时"
    except Exception as e:
        return False, str(e)


# ========== 数据检查与修复 ==========

@router.post("/normalize", response_model=TaskResponse)
async def run_normalize(
    subject: Optional[str] = None,
    fix: bool = False,
    current_user: User = Depends(require_root),
    db: Session = Depends(get_db)
):
    """执行数据规范化检查/修复（仅root）"""
    script_path = PROJECT_ROOT / "scripts" / "data_normalizer.py"
    
    if not script_path.exists():
        raise HTTPException(status_code=500, detail="规范化脚本不存在")
    
    args = ["--check" if not fix else "--fix"]
    if subject:
        args.extend(["--subject", subject])
    if fix:
        args.append("--no-backup")  # API调用不自动备份，由用户确认
    
    success, output = run_script(str(script_path), args)
    
    log_operation(
        db, current_user, "data_normalize",
        details={"subject": subject, "fix": fix, "success": success}
    )
    
    return TaskResponse(
        success=success,
        message="数据规范化完成" if success else "执行失败",
        output=output
    )


@router.post("/analyze", response_model=TaskResponse)
async def run_analyze(
    subject: Optional[str] = None,
    current_user: User = Depends(require_root),
    db: Session = Depends(get_db)
):
    """执行数据质量分析（仅root）"""
    script_path = PROJECT_ROOT / "scripts" / "data_analyzer.py"
    
    if not script_path.exists():
        raise HTTPException(status_code=500, detail="分析脚本不存在")
    
    args = ["--all"]
    if subject:
        args.extend(["--subject", subject])
    
    success, output = run_script(str(script_path), args)
    
    log_operation(
        db, current_user, "data_analyze",
        details={"subject": subject, "success": success}
    )
    
    return TaskResponse(
        success=success,
        message="数据分析完成" if success else "执行失败",
        output=output
    )


@router.post("/generate-html", response_model=TaskResponse)
async def run_generate_html(
    subject: Optional[str] = None,
    current_user: User = Depends(require_root),
    db: Session = Depends(get_db)
):
    """生成HTML图谱（仅root）"""
    script_path = PROJECT_ROOT / "manage.py"
    
    args = ["generate"]
    if subject:
        args.extend(["--subject", subject])
    else:
        args.append("--all")
    
    success, output = run_script(str(script_path), args)
    
    # 同时更新index
    if success:
        run_script(str(script_path), ["update-index"])
    
    log_operation(
        db, current_user, "generate_html",
        details={"subject": subject, "success": success}
    )
    
    return TaskResponse(
        success=success,
        message="HTML生成完成" if success else "执行失败",
        output=output
    )


@router.post("/import-neo4j", response_model=TaskResponse)
async def run_import_neo4j(
    subject: Optional[str] = None,
    target: str = "local",
    clear: bool = False,
    current_user: User = Depends(require_root),
    db: Session = Depends(get_db)
):
    """导入数据到Neo4j（仅root）"""
    script_path = PROJECT_ROOT / "manage.py"
    
    args = ["import"]
    if subject:
        args.extend(["--subject", subject])
    else:
        args.append("--all")
    
    args.extend(["--target", target])
    
    if clear:
        args.append("--clear")
    
    success, output = run_script(str(script_path), args)
    
    log_operation(
        db, current_user, "import_neo4j",
        details={"subject": subject, "target": target, "clear": clear, "success": success}
    )
    
    return TaskResponse(
        success=success,
        message="Neo4j导入完成" if success else "执行失败",
        output=output
    )


@router.post("/sync", response_model=TaskResponse)
async def run_sync(
    subject: Optional[str] = None,
    current_user: User = Depends(require_root),
    db: Session = Depends(get_db)
):
    """同步学科数据（生成HTML + 更新索引）（仅root）"""
    script_path = PROJECT_ROOT / "manage.py"
    
    args = ["sync"]
    if subject:
        args.extend(["--subject", subject])
    else:
        args.append("--all")
    
    success, output = run_script(str(script_path), args)
    
    log_operation(
        db, current_user, "sync_data",
        details={"subject": subject, "success": success}
    )
    
    return TaskResponse(
        success=success,
        message="数据同步完成" if success else "执行失败",
        output=output
    )


# ========== 版本管理 ==========

@router.get("/versions/{subject_id}")
async def list_versions(
    subject_id: str,
    current_user: User = Depends(require_root),
    db: Session = Depends(get_db)
):
    """获取学科版本列表（root）"""
    versions = db.query(DataVersion).filter(
        DataVersion.subject_id == subject_id
    ).order_by(DataVersion.created_at.desc()).all()
    
    return {
        "success": True,
        "versions": [VersionInfo.model_validate(v) for v in versions]
    }


@router.post("/versions", response_model=VersionInfo)
async def create_version(
    version_data: CreateVersionRequest,
    current_user: User = Depends(require_root),
    db: Session = Depends(get_db)
):
    """创建新版本（仅root）"""
    # 检查版本是否已存在
    existing = db.query(DataVersion).filter(
        DataVersion.subject_id == version_data.subject_id,
        DataVersion.version == version_data.version
    ).first()
    
    if existing:
        raise HTTPException(status_code=400, detail="版本已存在")
    
    # 获取实体和关系数量
    from .review import load_entities_from_json, load_relations_from_json
    entities = load_entities_from_json(version_data.subject_id)
    relations = load_relations_from_json(version_data.subject_id)
    
    version = DataVersion(
        subject_id=version_data.subject_id,
        version=version_data.version,
        base_version=version_data.base_version,
        description=version_data.description,
        entity_count=len(entities),
        relation_count=len(relations),
        created_by=current_user.id
    )
    db.add(version)
    db.commit()
    db.refresh(version)
    
    log_operation(
        db, current_user, "create_version", "version", str(version.id),
        details={"subject_id": version_data.subject_id, "version": version_data.version}
    )
    
    return VersionInfo.model_validate(version)


@router.post("/versions/{version_id}/publish", response_model=VersionInfo)
async def publish_version(
    version_id: int,
    current_user: User = Depends(require_root),
    db: Session = Depends(get_db)
):
    """发布版本（仅root）"""
    version = db.query(DataVersion).filter(DataVersion.id == version_id).first()
    if not version:
        raise HTTPException(status_code=404, detail="版本不存在")
    
    version.status = VersionStatus.published
    version.published_at = datetime.utcnow()
    db.commit()
    db.refresh(version)
    
    log_operation(
        db, current_user, "publish_version", "version", str(version_id),
        details={"subject_id": version.subject_id, "version": version.version}
    )
    
    return VersionInfo.model_validate(version)


# ========== 学科列表 ==========

@router.get("/subjects")
async def list_all_subjects(
    current_user: User = Depends(require_root)
):
    """获取所有学科列表（root）"""
    subjects = []
    for name, config in SUBJECT_CONFIG.items():
        subjects.append({
            "subject_id": name,
            "display_name": config.get('display_name', name),
            "icon": config.get('icon', '📚'),
            "data_dir": config.get('data_dir'),
            "neo4j_label": config.get('neo4j_label')
        })
    
    return {"success": True, "subjects": subjects}


# ========== 导出功能 ==========

@router.post("/export", response_model=TaskResponse)
async def export_data(
    subject: Optional[str] = None,
    current_user: User = Depends(require_root),
    db: Session = Depends(get_db)
):
    """导出数据到Excel（仅root）"""
    script_path = PROJECT_ROOT / "scripts" / "json2csv.py"
    
    if not script_path.exists():
        raise HTTPException(status_code=500, detail="导出脚本不存在")
    
    args = []
    if subject:
        args.extend(["--subject", subject])
    
    success, output = run_script(str(script_path), args)
    
    log_operation(
        db, current_user, "export_data",
        details={"subject": subject, "success": success}
    )
    
    return TaskResponse(
        success=success,
        message="数据导出完成" if success else "执行失败",
        output=output
    )
