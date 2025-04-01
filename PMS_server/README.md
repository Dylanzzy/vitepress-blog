# 项目管理系统 (Project Management System)

## 项目简介
这是一个基于 Express.js 开发的项目管理系统后端服务。本系统提供了完整的项目管理功能，包括用户认证、项目创建与管理、任务分配等功能。

## 技术栈
- Node.js
- Express.js
- MongoDB (数据库)
- JWT (认证)
- 其他中间件:
  - cors (跨域资源共享)
  - helmet (安全防护)
  - morgan (日志记录)
  - compression (响应压缩)

## 开始使用

### 环境要求
- Node.js (推荐 v18.x 或更高版本)
- npm (推荐 v8.x 或更高版本)

### 安装步骤
1. 克隆项目
```bash
git clone [项目地址]
cd project-management-system
```

2. 安装依赖
```bash
npm install
```

3. 配置环境变量
复制 `.env.example` 文件为 `.env`，并根据需要修改配置：
```bash
cp .env.example .env
```

4. 启动服务器
开发环境：
```bash
npm run dev
```

生产环境：
```bash
npm start
```

## API 文档
服务器默认运行在 `http://localhost:3000`

### 主要 API 端点
- POST /api/auth/login - 用户登录
- POST /api/auth/register - 用户注册
- GET /api/projects - 获取项目列表
- POST /api/projects - 创建新项目
- GET /api/tasks - 获取任务列表
- POST /api/tasks - 创建新任务

详细的 API 文档请参考 [API文档](./docs/api.md)

## 项目结构 