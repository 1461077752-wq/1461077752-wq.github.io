# GitHub Pages 部署指南

## 📋 部署前准备

### 1. 创建 GitHub 仓库

访问 [GitHub](https://github.com/new) 创建新仓库:

- **仓库名称**: `yourusername.github.io` (将 yourusername 替换为你的 GitHub 用户名)
- **可见性**: Public (公开)
- **初始化**: 不要勾选 "Initialize this repository with a README"

### 2. 配置 Git 用户信息(可选但推荐)

```bash
git config --global user.name "Your Name"
git config --global user.email "your-email@example.com"
```

## 🚀 部署步骤

### 方法一:命令行推送(推荐)

```bash
# 添加远程仓库地址(替换为你的实际用户名)
git remote add origin https://github.com/yourusername/yourusername.github.io.git

# 推送到 GitHub
git push -u origin main
```

### 方法二:使用 GitHub Desktop

1. 打开 GitHub Desktop
2. File → Add Local Repository
3. 选择本项目目录
4. 点击 "Publish repository"
5. 输入仓库名 `yourusername.github.io`

## ⚙️ 配置 GitHub Pages

### 自动启用(推荐)

当你的仓库名为 `yourusername.github.io` 时,GitHub 会自动启用 Pages:

1. 等待 1-2 分钟让 GitHub 构建站点
2. 访问 `https://yourusername.github.io`

### 手动配置(如果自动未生效)

1. 进入仓库页面
2. 点击 **Settings** → **Pages**
3. 在 "Source" 下选择:
   - Branch: `main`
   - Folder: `/ (root)`
4. 点击 **Save**

## 🔧 修改配置文件

编辑 `_config.yml`:

```yaml
title: 你的博客标题
email: your-email@example.com
description: 你的博客描述
github_username: yourusername  # 改为你的 GitHub 用户名
url: "https://yourusername.github.io"  # 改为你的实际地址
```

## ✍️ 发布新文章

1. 在 `_posts` 目录创建新文件
2. 文件名格式: `YYYY-MM-DD-title.md`
3. 提交并推送:

```bash
git add _posts/
git commit -m "Add new post: 文章标题"
git push
```

4. 等待几分钟,文章会自动出现在博客上

## 🔍 验证部署

部署完成后,检查以下内容:

1. ✅ 访问 `https://yourusername.github.io` 能看到首页
2. ✅ 点击文章链接能正常跳转
3. ✅ RSS 订阅地址 `https://yourusername.github.io/feed.xml` 可访问

## 🐛 常见问题

### 问题 1:页面显示 404

**原因**: GitHub Pages 还未完成构建

**解决**: 等待 2-5 分钟后刷新页面

### 问题 2:样式丢失

**原因**: CSS 路径配置错误

**解决**: 检查 `_config.yml` 中的 `baseurl` 是否为空字符串 `""`

### 问题 3:本地预览正常,GitHub 上显示异常

**原因**: 可能是主题或插件问题

**解决**:
1. 检查仓库 Settings → Actions → General,确保 Actions 已启用
2. 查看 GitHub Pages 构建日志

## 📊 查看构建状态

1. 进入仓库页面
2. 点击 **Actions** 标签
3. 查看 "pages build and deployment" 工作流状态
4. 如有错误,点击查看详细日志

## 🎯 下一步

部署成功后,你可以:

- 自定义域名(在 Settings → Pages → Custom domain)
- 添加评论系统(如 Disqus、Utterances)
- 集成 Google Analytics 统计访问量
- 添加更多页面(关于我、归档等)

## 💡 提示

- 每次推送到 main 分支后,GitHub 会自动重新构建
- 构建通常需要 1-3 分钟
- 可以在 Actions 标签页查看构建历史和日志

---

祝你博客之旅愉快! 🎉
