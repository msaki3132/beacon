#!/bin/bash

# Django Local Debug with Shell Script
# ローカルデバッグ用のシェル起動スクリプト

set -e

# Color output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${GREEN}=== Django Shell (Debug) ===${NC}"

# Activate virtual environment
if [ -f "venv/bin/activate" ]; then
    source venv/bin/activate
else
    echo -e "${RED}Virtual environment not found. Run start-debug.sh first.${NC}"
    exit 1
fi

# Start Django shell
echo -e "${GREEN}Starting Django shell...${NC}"
echo -e "${YELLOW}Type 'exit()' to quit${NC}"

python manage.py shell
