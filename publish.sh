#!/bin/zsh

set -euo pipefail

REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$REPO_DIR"

COMMIT_MESSAGE="${1:-Publish site update: $(date '+%Y-%m-%d %H:%M:%S')}"
CURRENT_BRANCH="$(git branch --show-current)"

if [[ -z "$CURRENT_BRANCH" ]]; then
  echo "当前目录不是有效的 Git 仓库。"
  exit 1
fi

echo "1/4 同步 Excel 到网站数据..."
python3 dashboard/sync_vocab.py --once

echo
echo "2/4 检查改动..."
git -c core.quotepath=false status --short

echo
echo "3/4 暂存网站相关文件..."
git add README.md publish.sh dashboard docs .gitignore

if git diff --cached --quiet; then
  echo "没有需要提交的改动。"
  exit 0
fi

echo
echo "4/4 提交并推送到 origin/${CURRENT_BRANCH}..."
git commit -m "$COMMIT_MESSAGE"
git push origin "$CURRENT_BRANCH"

echo
echo "发布完成。"
echo "站点地址: https://gtilor.github.io/IELTS-learning-website/"
