/**
 * 认证相关逻辑
 */

// 检查认证状态，未登录则跳转
function requireAuth() {
    if (!isLoggedIn()) {
        window.location.href = '/static/app/login.html';
        return false;
    }
    return true;
}

// 检查角色权限（支持多角色用户）
function requireRole(...roles) {
    if (!requireAuth()) return false;
    
    const user = getUserInfo();
    if (!user) {
        window.location.href = '/static/app/dashboard.html';
        return false;
    }
    
    // 支持单角色字符串或角色数组
    const userRoles = Array.isArray(user.role) ? user.role : [user.role];
    const hasRequiredRole = roles.some(r => userRoles.includes(r));
    
    if (!hasRequiredRole) {
        window.location.href = '/static/app/dashboard.html';
        return false;
    }
    return true;
}

// 渲染用户信息到侧边栏
function renderUserInfo() {
    const user = getUserInfo();
    if (!user) return;
    
    // 用户名首字母
    const avatar = document.querySelector('.user-avatar');
    if (avatar) {
        avatar.textContent = user.name.charAt(0).toUpperCase();
    }
    
    // 用户名
    const nameEl = document.querySelector('.user-name span');
    if (nameEl) {
        nameEl.textContent = user.name;
    }
    
    // 角色
    const roleEl = document.querySelector('.user-role');
    if (roleEl) {
        const roleMap = {
            'root': '系统管理员',
            'admin': '管理员',
            'teacher': '教师'
        };
        roleEl.textContent = roleMap[user.role] || user.role;
    }
    
    // 根据角色显示/隐藏菜单项
    const adminMenus = document.querySelectorAll('[data-role="admin"]');
    const rootMenus = document.querySelectorAll('[data-role="root"]');
    
    adminMenus.forEach(el => {
        el.style.display = hasRole('root', 'admin') ? '' : 'none';
    });
    
    rootMenus.forEach(el => {
        el.style.display = hasRole('root') ? '' : 'none';
    });
}

// 绑定退出按钮
function bindLogoutBtn() {
    const logoutBtn = document.getElementById('logoutBtn');
    if (logoutBtn) {
        logoutBtn.addEventListener('click', (e) => {
            e.preventDefault();
            if (confirm('确定要退出登录吗？')) {
                logout();
            }
        });
    }
}

// 显示Toast消息
function showToast(message, type = 'success') {
    let container = document.querySelector('.toast-container');
    if (!container) {
        container = document.createElement('div');
        container.className = 'toast-container';
        document.body.appendChild(container);
    }
    
    const toast = document.createElement('div');
    toast.className = `toast toast-${type}`;
    toast.textContent = message;
    container.appendChild(toast);
    
    setTimeout(() => {
        toast.remove();
    }, 3000);
}

// 显示加载状态
function showLoading(container) {
    container.innerHTML = '<div class="loading">加载中...</div>';
}

// 初始化页面
function initPage() {
    renderUserInfo();
    bindLogoutBtn();
    
    // 高亮当前菜单项
    const currentPath = window.location.pathname;
    document.querySelectorAll('.menu-item').forEach(item => {
        if (item.getAttribute('href') === currentPath) {
            item.classList.add('active');
        }
    });
}
