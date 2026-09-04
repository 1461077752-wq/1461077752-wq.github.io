# 我的技术博客

基于 Hugo + PaperMod 主题构建的个人技术博客,部署在 GitHub Pages 上。

## 🚀 快速开始

### 本地开发(需要安装 Hugo)

1. **安装 Hugo** (macOS):
   ```bash
   brew install hugo
   ```

2. **启动本地服务器**:
   ```bash
   hugo server -D
   ```

3. **访问**: http://localhost:1313

### 创建新文章

```bash
hugo new content/posts/my-new-post.md
```

或在 `content/posts` 目录下手动创建 Markdown 文件:

```markdown
---
title: "文章标题"
date: 2026-09-04T10:00:00+08:00
draft: false
tags: ["标签1", "标签2"]
categories: ["分类"]
description: "文章描述"
ShowToc: true
---

文章内容...
```

## 📁 目录结构

```
.
├── content/              # 内容目录
│   ├── posts/           # 博客文章
│   └── pages/           # 静态页面
├── layouts/             # 自定义布局
├── static/              # 静态资源
├── themes/              # 主题(PaperMod)
├── .github/workflows/   # CI/CD 配置
├── hugo.toml            # Hugo 配置文件
└── README.md
```

## 🌐 部署

推送到 main 分支后,GitHub Actions 会自动构建并部署到 GitHub Pages:

```bash
git add .
git commit -m "Add new post"
git push
```

访问: https://1461077752-wq.github.io

## ⚙️ 配置说明

编辑 `hugo.toml` 可以修改:

- `title`: 博客标题
- `baseURL`: 博客地址
- `theme`: 主题名称
- `params.socialIcons`: 社交链接
- `menu.main`: 导航菜单

## 🎨 主题特性

PaperMod 主题支持:

- ✅ 响应式设计
- ✅ 暗黑模式
- ✅ 代码高亮
- ✅ 目录(TOC)
- ✅ 搜索功能
- ✅ RSS 订阅
- ✅ 多语言支持
- ✅ 阅读时间统计
- ✅ 字数统计

## 📝 写作规范

- 文章放在 `content/posts` 目录
- 文件名格式: `YYYY-MM-DD-title.md`
- 必须包含 front matter (标题、日期等元数据)
- 支持 Markdown 语法
- 使用 `draft: true` 标记草稿

## 🔗 相关链接

- [Hugo 官方文档](https://gohugo.io/documentation/)
- [PaperMod 主题](https://github.com/adityatelange/hugo-PaperMod)
- [GitHub Pages 文档](https://docs.github.com/en/pages)

## 📄 License

MIT License
