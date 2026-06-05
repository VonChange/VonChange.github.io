#!/usr/bin/env bash
# 本地启动 docs 静态站点，端口 9998，并自动打开浏览器

set -e

PORT=9998
ROOT="$(cd "$(dirname "$0")/docs" && pwd)"
URL="http://localhost:${PORT}"

cd "$ROOT"

# 端口已被占用时提示
if lsof -iTCP:"$PORT" -sTCP:LISTEN -t >/dev/null 2>&1; then
  echo "端口 ${PORT} 已被占用，请先关闭占用进程或修改脚本中的 PORT"
  exit 1
fi

echo "启动本地服务: ${URL}"
echo "根目录: ${ROOT}"
echo "按 Ctrl+C 停止"

# 后台启动 HTTP 服务
python3 -m http.server "$PORT" &
SERVER_PID=$!

# 等待服务就绪后打开浏览器
sleep 0.5
open "$URL" 2>/dev/null || xdg-open "$URL" 2>/dev/null || echo "请手动打开: ${URL}"

trap 'kill $SERVER_PID 2>/dev/null; exit 0' INT TERM
wait $SERVER_PID
