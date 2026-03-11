#!/bin/bash
# セッション開始時にCLAUDE.mdを自動で最新化する
cd "$CLAUDE_PROJECT_DIR" && git pull origin main --quiet 2>/dev/null
exit 0
