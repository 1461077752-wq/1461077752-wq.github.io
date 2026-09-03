# 我的技术博客

基于 Jekyll + GitHub Pages 构建的个人技术博客。

## 📚 目录结构

```
.
├── _config.yml          # 博客配置文件
├── _layouts/            # 页面布局模板
│   ├── default.html     # 默认布局
│   ├── home.html        # 首页布局
│   └── post.html        # 文章布局
├── _posts/              # 博客文章目录
├── _includes/           # 可复用组件
├── assets/              # 静态资源
│   └── css/
│       └── style.css    # 自定义样式
├── index.md             # 首页
├── Gemfile              # Ruby 依赖管理
└── README.md            # 说明文档
```

## 🚀 快速开始

### 本地开发环境要求

- Ruby 2.7+
- Bundler

### 安装依赖

```bash
bundle install
```

### 本地预览

```bash
bundle exec jekyll serve
```

访问 http://localhost:4000 查看博客效果。

### 创建新文章

在 `_posts` 目录下创建新文件,命名格式为: `YYYY-MM-DD-title.md`

示例:

```markdown
---
layout: post
title: "我的第一篇文章"
date: 2026-09-03 18:00:00 +0800
categories: 技术
tags: 教程
---

这里是文章内容...
```

## 🌐 部署到 GitHub Pages

### 方法一:直接推送(推荐)

1. 在 GitHub 创建新仓库,命名为 `yourusername.github.io`
2. 将代码推送到该仓库的 `main` 分支
3. 等待几分钟,访问 `https://yourusername.github.io` 即可看到博客

```bash
git init
git add .
git commit -m "Initial commit: setup blog"
git remote add origin https://github.com/yourusername/yourusername.github.io.git
git push -u origin main
```

### 方法二:使用 GitHub Actions

项目已包含自动部署配置,推送到 main 分支后会自动部署。

## ⚙️ 配置说明

编辑 `_config.yml` 文件可以修改:

- `title`: 博客标题
- `description`: 博客描述
- `email`: 联系邮箱
- `github_username`: GitHub 用户名
- `url`: 博客地址
- `theme`: 主题样式

## 📝 写作规范

- 文章放在 `_posts` 目录
- 文件名格式: `YYYY-MM-DD-title.md`
- 必须包含 front matter (标题、日期等元数据)
- 支持 Markdown 语法

## 🎨 自定义样式

修改 `assets/css/style.css` 文件来自定义博客外观。

## 📦 常用命令

```bash
# 安装依赖
bundle install

# 本地预览
bundle exec jekyll serve

# 生成静态文件
bundle exec jekyll build

# 检查配置
bundle exec jekyll doctor
```

## 🔗 相关链接

- [Jekyll 官方文档](https://jekyllrb.com/docs/)
- [GitHub Pages 文档](https://docs.github.com/en/pages)
- [Minima 主题](https://github.com/jekyll/minima)

## 📄 License

MIT License
