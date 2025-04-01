# 项目管理系统 (Project Management System)

## 项目概述

这是一个完整的项目管理系统，包含前端 Vue.js 应用和后端 Express.js 服务。系统提供了项目管理、任务跟踪、数据统计等功能，采用现代化的技术栈和设计风格。

## 技术栈

### 前端技术

- Vue 3 (Composition API)
- Naive UI 组件库
- ECharts 数据可视化
- Pinia 状态管理
- Vue Router 路由管理
- Vite 构建工具

### 后端技术

- Node.js
- Express.js 框架
- MySQL 数据库
- CORS 跨域支持
- dotenv 环境变量管理

## 系统功能

### 前端功能

- 项目看板展示
- 项目分类管理
- 数据统计可视化
- 项目状态跟踪
- 文件管理
- 响应式布局

### 后端功能

- RESTful API 接口
- 数据库操作
- 错误处理中间件
- 跨域支持
- 用户认证(待实现)

## 安装与运行

### 前端安装

```bash
cd PMS_web
npm install
npm run dev
```

### 后端安装

```bash
cd PMS_server
npm install
npm start
```

开发模式运行后端：

```bash
npm run dev
```

## 项目结构

### 前端目录结构

```
PMS_web/
├── public/            # 静态资源
├── src/
│   ├── assets/        # 图片等资源
│   ├── components/    # 可复用组件
│   ├── router/        # 路由配置
│   ├── views/         # 页面组件
│   ├── App.vue        # 根组件
│   └── main.js        # 入口文件
├── vite.config.js     # Vite配置
└── package.json       # 项目配置
```

### 后端目录结构

```
PMS_server/
├── config/            # 配置文件
├── routes/            # 路由定义
├── app.js             # 主应用文件
└── package.json       # 项目配置
```

## API 接口

后端默认运行在 `http://localhost:3001`

### 主要 API 端点

- GET /api/projects - 获取项目列表
- POST /api/projects - 创建新项目
- GET /api/tasks - 获取任务列表
- POST /api/tasks - 创建新任务

## 开发指南

1. 克隆仓库
2. 分别进入前后端目录安装依赖
3. 启动开发服务器
4. 前端开发访问 `http://localhost:8081`
5. 后端开发访问 `http://localhost:3001`

## 环境要求

- Node.js (推荐 v18.x 或更高版本)
- npm (推荐 v8.x 或更高版本)
- MySQL (或其他兼容数据库)

## 贡献指南

欢迎提交 Issue 和 Pull Request 来帮助改进项目。请遵循现有代码风格，并为新功能添加适当的测试。

## 许可证

[MIT License](LICENSE)
