-- 知识图谱数据审校系统 - 数据库初始化脚本

-- 创建数据库
CREATE DATABASE IF NOT EXISTS knowledge_graph CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

USE knowledge_graph;

-- 用户表
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    name VARCHAR(100) NOT NULL,
    role ENUM('root', 'admin', 'teacher') DEFAULT 'teacher',
    email VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_login TIMESTAMP NULL,
    is_active BOOLEAN DEFAULT TRUE,
    must_change_password BOOLEAN DEFAULT TRUE,
    INDEX idx_username (username),
    INDEX idx_role (role)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 用户-学科分配表
CREATE TABLE IF NOT EXISTS user_subjects (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    subject_id VARCHAR(50) NOT NULL,
    entity_types JSON,
    assigned_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    INDEX idx_user_id (user_id),
    INDEX idx_subject_id (subject_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 审核记录表
CREATE TABLE IF NOT EXISTS review_records (
    id INT AUTO_INCREMENT PRIMARY KEY,
    subject_id VARCHAR(50) NOT NULL,
    target_type VARCHAR(20) NOT NULL,
    target_id VARCHAR(255) NOT NULL,
    target_title VARCHAR(500),
    entity_type VARCHAR(100),
    field_name VARCHAR(100),
    original_value TEXT,
    suggested_value TEXT,
    status ENUM('pending', 'approved', 'rejected', 'needs_fix') DEFAULT 'pending',
    reviewer_id INT,
    comment TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    resolved_at TIMESTAMP NULL,
    FOREIGN KEY (reviewer_id) REFERENCES users(id),
    INDEX idx_subject_status (subject_id, status),
    INDEX idx_target (target_type, target_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 数据版本表
CREATE TABLE IF NOT EXISTS data_versions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    subject_id VARCHAR(50) NOT NULL,
    version VARCHAR(20) NOT NULL,
    base_version VARCHAR(20),
    status ENUM('draft', 'in_review', 'approved', 'published') DEFAULT 'draft',
    entity_count INT DEFAULT 0,
    relation_count INT DEFAULT 0,
    description TEXT,
    created_by INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    published_at TIMESTAMP NULL,
    FOREIGN KEY (created_by) REFERENCES users(id),
    UNIQUE KEY uk_subject_version (subject_id, version),
    INDEX idx_subject_id (subject_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 操作日志表
CREATE TABLE IF NOT EXISTS operation_logs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    action VARCHAR(100) NOT NULL,
    target_type VARCHAR(50),
    target_id VARCHAR(255),
    details JSON,
    ip_address VARCHAR(45),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id),
    INDEX idx_user_time (user_id, created_at),
    INDEX idx_action (action)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 创建默认root用户 (密码: root123)
-- 密码哈希是 bcrypt 加密的 'root123'
INSERT INTO users (username, password_hash, name, role, is_active, must_change_password)
VALUES ('root', '$2b$12$LQv3c1yqBWVHxkd0LHAkCOYz6TtxMQJqhN8/X4.C6aFj0mU4kYPfK', '系统管理员', 'root', TRUE, TRUE)
ON DUPLICATE KEY UPDATE username=username;
