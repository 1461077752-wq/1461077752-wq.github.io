#!/bin/bash

# 博客本地开发启动脚本

echo "🚀 正在启动 Jekyll 本地服务器..."
echo ""

# 检查是否安装了 bundler
if ! command -v bundle &> /dev/null; then
    echo "❌ 未检测到 Bundler,请先安装:"
    echo "   gem install bundler"
    exit 1
fi

# 检查 Gemfile 是否存在
if [ ! -f "Gemfile" ]; then
    echo "❌ 未找到 Gemfile,请在项目根目录运行此脚本"
    exit 1
fi

# 安装依赖
echo "📦 检查并安装依赖..."
bundle install --quiet

# 启动服务器
echo ""
echo "✅ 依赖已就绪,启动本地服务器..."
echo "📍 访问地址: http://localhost:4000"
echo "⏹️  按 Ctrl+C 停止服务器"
echo ""

bundle exec jekyll serve --livereload
