#!/bin/bash

# Django Local Debug with Custom Port Script
# カスタムポートでデバッグ用の起動スクリプト

set -e

PORT=${1:-8000}

# Color output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${GREEN}=== Django Local Debug Server ===${NC}"

# Activate virtual environment
if [ -f "venv/bin/activate" ]; then
    source venv/bin/activate
else
    echo -e "${RED}Virtual environment not found. Run start-debug.sh first.${NC}"
    exit 1
fi

# Start development server on custom port
echo -e "${GREEN}Starting development server on port $PORT...${NC}"
echo -e "${GREEN}Server running at: http://127.0.0.1:$PORT${NC}"
echo -e "${YELLOW}Press Ctrl+C to stop${NC}"

python manage.py runserver 0.0.0.0:$PORT
