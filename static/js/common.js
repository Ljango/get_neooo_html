/**
 * 公共功能模块
 * 提取重复的JavaScript代码
 */

// ========== 侧边栏动态渲染 ==========

/**
 * 生成侧边栏HTML
 * @param {string} activePage - 当前页面标识 (dashboard, review, admin, system)
 * @returns {string} 侧边栏HTML
 */
function generateSidebar(activePage = '') {
    const menuItems = [
        { href: '/static/app/dashboard.html', icon: '📊', text: '工作台', id: 'dashboard' },
        { href: '/static/app/review.html', icon: '✏️', text: '数据审核', id: 'review' },
        { href: '/static/index.html', icon: '🔗', text: '图谱可视化', id: 'index', target: '_blank' },
        { divider: true, role: 'admin' },
        { label: '管理功能', role: 'admin' },
        { href: '/static/app/admin.html', icon: '👥', text: '用户管理', id: 'admin', role: 'admin' },
        { href: '/static/app/system.html', icon: '⚙️', text: '系统管理', id: 'system', role: 'root' }
    ];

    let html = `
        <div class="sidebar-header">
            <h2>知识图谱审校系统</h2>
        </div>
        <nav class="sidebar-menu">`;

    menuItems.forEach(item => {
        if (item.divider) {
            html += `<div class="menu-divider" data-role="${item.role || ''}"></div>`;
        } else if (item.label) {
            html += `<div class="menu-label" data-role="${item.role || ''}">${item.label}</div>`;
        } else {
            const isActive = item.id === activePage ? ' active' : '';
            const roleAttr = item.role ? ` data-role="${item.role}"` : '';
            const targetAttr = item.target ? ` target="${item.target}"` : '';
            html += `<a href="${item.href}" class="menu-item${isActive}"${roleAttr}${targetAttr}>
                <i>${item.icon}</i> <span>${item.text}</span>
            </a>`;
        }
    });

    html += `
        </nav>
        <div class="sidebar-footer">
            <div class="user-info">
                <div class="user-avatar">U</div>
                <div class="user-name">
                    <span>用户</span>
                    <div class="user-role">角色</div>
                </div>
            </div>
            <a href="#" id="logoutBtn" style="color: rgba(255,255,255,0.6); font-size: 12px; display: block; margin-top: 10px;">退出登录</a>
        </div>`;

    return html;
}

/**
 * 初始化侧边栏
 * @param {string} activePage - 当前页面标识
 */
function initSidebar(activePage = '') {
    const sidebar = document.querySelector('.sidebar');
    if (sidebar && sidebar.children.length === 0) {
        sidebar.innerHTML = generateSidebar(activePage);
    }
}


// ========== 分页渲染 ==========

/**
 * 渲染分页组件
 * @param {HTMLElement} container - 分页容器
 * @param {number} currentPage - 当前页码
 * @param {number} totalPages - 总页数
 * @param {function} callback - 页码点击回调函数
 */
function renderPagination(container, currentPage, totalPages, callback) {
    if (!container || totalPages <= 1) {
        if (container) container.innerHTML = '';
        return;
    }

    let html = '<div class="pagination">';
    
    // 上一页
    if (currentPage > 1) {
        html += `<button class="page-btn" data-page="${currentPage - 1}">上一页</button>`;
    }
    
    // 页码
    const showPages = [];
    if (totalPages <= 7) {
        for (let i = 1; i <= totalPages; i++) showPages.push(i);
    } else {
        showPages.push(1);
        if (currentPage > 3) showPages.push('...');
        for (let i = Math.max(2, currentPage - 1); i <= Math.min(totalPages - 1, currentPage + 1); i++) {
            showPages.push(i);
        }
        if (currentPage < totalPages - 2) showPages.push('...');
        showPages.push(totalPages);
    }
    
    showPages.forEach(p => {
        if (p === '...') {
            html += '<span class="page-ellipsis">...</span>';
        } else {
            const activeClass = p === currentPage ? ' active' : '';
            html += `<button class="page-btn${activeClass}" data-page="${p}">${p}</button>`;
        }
    });
    
    // 下一页
    if (currentPage < totalPages) {
        html += `<button class="page-btn" data-page="${currentPage + 1}">下一页</button>`;
    }
    
    html += '</div>';
    container.innerHTML = html;
    
    // 绑定点击事件
    container.querySelectorAll('.page-btn').forEach(btn => {
        btn.addEventListener('click', () => {
            const page = parseInt(btn.dataset.page);
            if (page && callback) callback(page);
        });
    });
}


// ========== 模态框 ==========

/**
 * 打开模态框
 * @param {string} modalId - 模态框ID
 */
function openModal(modalId) {
    const modal = document.getElementById(modalId);
    if (modal) {
        modal.style.display = 'flex';
        document.body.style.overflow = 'hidden';
    }
}

/**
 * 关闭模态框
 * @param {string} modalId - 模态框ID
 */
function closeModal(modalId) {
    const modal = document.getElementById(modalId);
    if (modal) {
        modal.style.display = 'none';
        document.body.style.overflow = '';
    }
}

/**
 * 初始化模态框关闭事件
 */
function initModals() {
    // 点击模态框背景关闭
    document.querySelectorAll('.modal').forEach(modal => {
        modal.addEventListener('click', (e) => {
            if (e.target === modal) {
                modal.style.display = 'none';
                document.body.style.overflow = '';
            }
        });
    });
    
    // 关闭按钮
    document.querySelectorAll('.modal-close, [data-close-modal]').forEach(btn => {
        btn.addEventListener('click', () => {
            const modal = btn.closest('.modal');
            if (modal) {
                modal.style.display = 'none';
                document.body.style.overflow = '';
            }
        });
    });
}


// ========== 学科选择器 ==========

/**
 * 加载学科选项到下拉框
 * @param {HTMLSelectElement} selectElement - 下拉框元素
 * @param {boolean} includeAll - 是否包含"全部"选项
 */
async function loadSubjectOptions(selectElement, includeAll = false) {
    if (!selectElement) return;
    
    try {
        const result = await api.review.getSubjects();
        const subjects = result.subjects || [];
        
        let html = includeAll ? '<option value="">全部学科</option>' : '';
        subjects.forEach(s => {
            html += `<option value="${s.display_name}">${s.display_name}</option>`;
        });
        selectElement.innerHTML = html;
    } catch (e) {
        console.error('加载学科列表失败:', e);
    }
}


// ========== 格式化工具 ==========

/**
 * 格式化日期时间
 * @param {string|Date} date - 日期
 * @param {string} format - 格式 ('full', 'date', 'time')
 * @returns {string}
 */
function formatDateTime(date, format = 'full') {
    if (!date) return '-';
    const d = new Date(date);
    if (isNaN(d.getTime())) return '-';
    
    const pad = n => n.toString().padStart(2, '0');
    const year = d.getFullYear();
    const month = pad(d.getMonth() + 1);
    const day = pad(d.getDate());
    const hours = pad(d.getHours());
    const minutes = pad(d.getMinutes());
    const seconds = pad(d.getSeconds());
    
    switch (format) {
        case 'date':
            return `${year}-${month}-${day}`;
        case 'time':
            return `${hours}:${minutes}:${seconds}`;
        default:
            return `${year}-${month}-${day} ${hours}:${minutes}:${seconds}`;
    }
}

/**
 * 格式化文件大小
 * @param {number} bytes - 字节数
 * @returns {string}
 */
function formatFileSize(bytes) {
    if (bytes === 0) return '0 B';
    const k = 1024;
    const sizes = ['B', 'KB', 'MB', 'GB'];
    const i = Math.floor(Math.log(bytes) / Math.log(k));
    return parseFloat((bytes / Math.pow(k, i)).toFixed(2)) + ' ' + sizes[i];
}

/**
 * 格式化数字（千分位）
 * @param {number} num - 数字
 * @returns {string}
 */
function formatNumber(num) {
    if (num === null || num === undefined) return '-';
    return num.toLocaleString('zh-CN');
}


// ========== 确认对话框 ==========

/**
 * 显示确认对话框
 * @param {string} message - 确认消息
 * @param {object} options - 选项
 * @returns {Promise<boolean>}
 */
function confirmDialog(message, options = {}) {
    const { title = '确认', confirmText = '确定', cancelText = '取消' } = options;
    return new Promise(resolve => {
        // 使用原生confirm
        resolve(confirm(message));
    });
}


// ========== 错误处理 ==========

/**
 * 显示API错误
 * @param {Error} error - 错误对象
 * @param {string} defaultMessage - 默认错误消息
 */
function showApiError(error, defaultMessage = '操作失败') {
    let message = defaultMessage;
    if (error.message) {
        message = error.message;
    } else if (typeof error === 'string') {
        message = error;
    }
    showToast(message, 'error');
}


// ========== 防抖和节流 ==========

/**
 * 防抖函数
 * @param {function} func - 要执行的函数
 * @param {number} wait - 等待时间(ms)
 * @returns {function}
 */
function debounce(func, wait = 300) {
    let timeout;
    return function executedFunction(...args) {
        const later = () => {
            clearTimeout(timeout);
            func(...args);
        };
        clearTimeout(timeout);
        timeout = setTimeout(later, wait);
    };
}

/**
 * 节流函数
 * @param {function} func - 要执行的函数
 * @param {number} limit - 限制时间(ms)
 * @returns {function}
 */
function throttle(func, limit = 300) {
    let inThrottle;
    return function(...args) {
        if (!inThrottle) {
            func.apply(this, args);
            inThrottle = true;
            setTimeout(() => inThrottle = false, limit);
        }
    };
}


// ========== 表格工具 ==========

/**
 * 创建简单表格
 * @param {Array} data - 数据数组
 * @param {Array} columns - 列配置 [{key, label, render?}]
 * @returns {string} HTML字符串
 */
function createTable(data, columns) {
    let html = '<table class="data-table"><thead><tr>';
    columns.forEach(col => {
        html += `<th>${col.label}</th>`;
    });
    html += '</tr></thead><tbody>';
    
    if (data.length === 0) {
        html += `<tr><td colspan="${columns.length}" class="empty-row">暂无数据</td></tr>`;
    } else {
        data.forEach(row => {
            html += '<tr>';
            columns.forEach(col => {
                const value = row[col.key];
                const display = col.render ? col.render(value, row) : (value ?? '-');
                html += `<td>${display}</td>`;
            });
            html += '</tr>';
        });
    }
    
    html += '</tbody></table>';
    return html;
}
