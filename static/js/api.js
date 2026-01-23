/**
 * API调用封装
 */

const API_BASE = '/api';

// 获取存储的token
function getToken() {
    return localStorage.getItem('access_token');
}

// 设置token
function setToken(token) {
    localStorage.setItem('access_token', token);
}

// 清除token
function clearToken() {
    localStorage.removeItem('access_token');
    localStorage.removeItem('user_info');
}

// 获取用户信息
function getUserInfo() {
    const info = localStorage.getItem('user_info');
    return info ? JSON.parse(info) : null;
}

// 设置用户信息
function setUserInfo(user) {
    localStorage.setItem('user_info', JSON.stringify(user));
}

// 通用请求方法
async function request(endpoint, options = {}) {
    const url = `${API_BASE}${endpoint}`;
    const token = getToken();
    
    const headers = {
        'Content-Type': 'application/json',
        ...options.headers
    };
    
    if (token) {
        headers['Authorization'] = `Bearer ${token}`;
    }
    
    try {
        const response = await fetch(url, {
            ...options,
            headers
        });
        
        // 处理401未授权
        if (response.status === 401) {
            clearToken();
            window.location.href = '/static/app/login.html';
            throw new Error('登录已过期，请重新登录');
        }
        
        const data = await response.json();
        
        if (!response.ok) {
            throw new Error(data.detail || data.message || '请求失败');
        }
        
        return data;
    } catch (error) {
        console.error('API Error:', error);
        throw error;
    }
}

// API方法
const api = {
    // ========== 认证 ==========
    auth: {
        login: (username, password) => 
            request('/auth/login', {
                method: 'POST',
                body: JSON.stringify({ username, password })
            }),
        
        logout: () => 
            request('/auth/logout', { method: 'POST' }),
        
        me: () => 
            request('/auth/me'),
        
        changePassword: (oldPassword, newPassword) =>
            request('/auth/password', {
                method: 'PUT',
                body: JSON.stringify({ 
                    old_password: oldPassword, 
                    new_password: newPassword 
                })
            })
    },
    
    // ========== 审核 ==========
    review: {
        getSubjects: () => 
            request('/review/subjects'),
        
        getEntityTypes: (subjectId) =>
            request(`/review/entity-types/${subjectId}`),
        
        getEntities: (subjectId, params = {}) => {
            const query = new URLSearchParams(params).toString();
            return request(`/review/entities/${subjectId}?${query}`);
        },
        
        getRelations: (subjectId, params = {}) => {
            const query = new URLSearchParams(params).toString();
            return request(`/review/relations/${subjectId}?${query}`);
        },
        
        getEntityDetail: (subjectId, identifier) =>
            request(`/review/entity/${subjectId}/${encodeURIComponent(identifier)}`),
        
        submit: (data) =>
            request('/review/submit', {
                method: 'POST',
                body: JSON.stringify(data)
            }),
        
        getProgress: (subjectId) =>
            request(`/review/progress/${subjectId}`),
        
        getRecords: (subjectId, params = {}) => {
            const query = new URLSearchParams(params).toString();
            return request(`/review/records/${subjectId}?${query}`);
        }
    },
    
    // ========== 管理 ==========
    admin: {
        getUsers: (params = {}) => {
            const query = new URLSearchParams(params).toString();
            return request(`/admin/users?${query}`);
        },
        
        getUser: (userId) =>
            request(`/admin/users/${userId}`),
        
        createUser: (data) =>
            request('/admin/users', {
                method: 'POST',
                body: JSON.stringify(data)
            }),
        
        updateUser: (userId, data) =>
            request(`/admin/users/${userId}`, {
                method: 'PUT',
                body: JSON.stringify(data)
            }),
        
        deleteUser: (userId) =>
            request(`/admin/users/${userId}`, { method: 'DELETE' }),
        
        resetPassword: (userId) =>
            request(`/admin/users/${userId}/reset-password`, { method: 'POST' }),
        
        assignSubject: (data) =>
            request('/admin/assign', {
                method: 'POST',
                body: JSON.stringify(data)
            }),
        
        removeAssignment: (assignmentId) =>
            request(`/admin/assign/${assignmentId}`, { method: 'DELETE' }),
        
        getStatistics: () =>
            request('/admin/statistics'),
        
        getLogs: (params = {}) => {
            const query = new URLSearchParams(params).toString();
            return request(`/admin/logs?${query}`);
        }
    },
    
    // ========== 数据操作 ==========
    data: {
        normalize: (subject = null, fix = false) =>
            request('/data/normalize', {
                method: 'POST',
                body: JSON.stringify({ subject, fix })
            }),
        
        analyze: (subject = null) =>
            request('/data/analyze', {
                method: 'POST',
                body: JSON.stringify({ subject })
            }),
        
        generateHtml: (subject = null) =>
            request('/data/generate-html', {
                method: 'POST',
                body: JSON.stringify({ subject })
            }),
        
        importNeo4j: (subject = null, target = 'local', clear = false) =>
            request('/data/import-neo4j', {
                method: 'POST',
                body: JSON.stringify({ subject, target, clear })
            }),
        
        sync: (subject = null) =>
            request('/data/sync', {
                method: 'POST',
                body: JSON.stringify({ subject })
            }),
        
        getSyncStatus: () =>
            request('/data/sync-status'),
        
        getVersions: (subjectId) =>
            request(`/data/versions/${subjectId}`),
        
        createVersion: (data) =>
            request('/data/versions', {
                method: 'POST',
                body: JSON.stringify(data)
            }),
        
        publishVersion: (versionId) =>
            request(`/data/versions/${versionId}/publish`, { method: 'POST' }),
        
        getSubjects: () =>
            request('/data/subjects'),
        
        exportData: (subject = null) =>
            request('/data/export', {
                method: 'POST',
                body: JSON.stringify({ subject })
            }),
        
        // 快照管理
        listSnapshots: (subjectId) =>
            request(`/data/snapshots/${subjectId}`),
        
        createSnapshot: (subjectId, version = 'auto', description = '') =>
            request(`/data/snapshots/create?subject_id=${subjectId}&version=${version}&description=${encodeURIComponent(description)}`, {
                method: 'POST'
            }),
        
        restoreSnapshot: (subjectId, filename) =>
            request(`/data/snapshots/restore?subject_id=${subjectId}&filename=${encodeURIComponent(filename)}`, {
                method: 'POST'
            }),
        
        deleteSnapshot: (subjectId, filename) =>
            request(`/data/snapshots/${subjectId}/${encodeURIComponent(filename)}`, {
                method: 'DELETE'
            }),
        
        // 数据包上传
        getUploadFormatSpec: () =>
            request('/data/upload/format-spec'),
        
        validateUpload: async (file) => {
            const formData = new FormData();
            formData.append('file', file);
            
            const token = getToken();
            const response = await fetch(`${API_BASE}/data/upload/validate`, {
                method: 'POST',
                headers: token ? { 'Authorization': `Bearer ${token}` } : {},
                body: formData
            });
            
            if (response.status === 401) {
                clearToken();
                window.location.href = '/static/app/login.html';
                throw new Error('登录已过期，请重新登录');
            }
            
            const data = await response.json();
            if (!response.ok) {
                throw new Error(data.detail || data.message || '验证失败');
            }
            return data;
        },
        
        uploadDataPackage: async (subjectId, file, backup = true) => {
            const formData = new FormData();
            formData.append('subject_id', subjectId);
            formData.append('file', file);
            formData.append('backup', backup);
            
            const token = getToken();
            const response = await fetch(`${API_BASE}/data/upload`, {
                method: 'POST',
                headers: token ? { 'Authorization': `Bearer ${token}` } : {},
                body: formData
            });
            
            if (response.status === 401) {
                clearToken();
                window.location.href = '/static/app/login.html';
                throw new Error('登录已过期，请重新登录');
            }
            
            const data = await response.json();
            if (!response.ok) {
                throw new Error(data.detail || data.message || '上传失败');
            }
            return data;
        }
    },
    
    // ========== 数据编辑 ==========
    edit: {
        updateEntity: (subjectId, identifier, updates) =>
            request(`/edit/entity/update?subject_id=${subjectId}`, {
                method: 'POST',
                body: JSON.stringify({ identifier, updates })
            }),
        
        createRelation: (subjectId, relation) =>
            request(`/edit/relation/create?subject_id=${subjectId}`, {
                method: 'POST',
                body: JSON.stringify(relation)
            }),
        
        deleteRelation: (subjectId, relation) =>
            request(`/edit/relation/delete?subject_id=${subjectId}`, {
                method: 'POST',
                body: JSON.stringify(relation)
            }),
        
        updateRelation: (subjectId, relation) =>
            request(`/edit/relation/update?subject_id=${subjectId}`, {
                method: 'POST',
                body: JSON.stringify(relation)
            }),
        
        batchEdit: (data) =>
            request('/edit/batch', {
                method: 'POST',
                body: JSON.stringify(data)
            }),
        
        listBackups: (subjectId) =>
            request(`/edit/backups/${subjectId}`)
    },
    
    // ========== 图谱可视化 ==========
    graph: {
        getEntityGraph: (subjectId, identifier, depth = 1, maxNodes = 50) =>
            request(`/review/entity-graph/${subjectId}/${encodeURIComponent(identifier)}?depth=${depth}&max_nodes=${maxNodes}`)
    }
};

// 检查是否已登录
function isLoggedIn() {
    return !!getToken();
}

// 检查用户角色（支持多角色）
function hasRole(...roles) {
    const user = getUserInfo();
    if (!user) return false;
    
    // 支持新的多角色格式 (user.roles 是数组)
    if (user.roles && Array.isArray(user.roles)) {
        return roles.some(r => user.roles.includes(r));
    }
    
    // 向后兼容单角色格式
    return roles.includes(user.role);
}

// 检查是否有上传数据包权限
function canUploadData() {
    return hasRole('root', 'admin', 'engineer');
}

// 检查是否有审核权限
function canReview() {
    return hasRole('root', 'admin', 'teacher', 'engineer');
}

// 检查是否有用户管理权限
function canManageUsers() {
    return hasRole('root', 'admin');
}

// 退出登录
async function logout() {
    try {
        await api.auth.logout();
    } catch (e) {
        console.log('Logout error:', e);
    }
    clearToken();
    window.location.href = '/static/app/login.html';
}
