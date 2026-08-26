#!/bin/bash

# Django Local Debug Start Script
# ローカルデバッグ用の起動スクリプト

set -e

# Color output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${GREEN}=== Django Local Debug Server ===${NC}"

# Check if virtual environment exists
if [ ! -d "venv" ]; then
    echo -e "${YELLOW}Creating virtual environment...${NC}"
    python3 -m venv venv
fi

# Activate virtual environment
echo -e "${YELLOW}Activating virtual environment...${NC}"
source venv/bin/activate

# Install/update dependencies
echo -e "${YELLOW}Installing dependencies...${NC}"
pip install -q -r requirements.txt

# Run migrations
echo -e "${YELLOW}Running migrations...${NC}"
python manage.py migrate

# Collect static files (optional, usually not needed in development)
# python manage.py collectstatic --noinput

# Start development server
echo -e "${GREEN}Starting development server...${NC}"
echo -e "${GREEN}Server running at: http://127.0.0.1:8000${NC}"
echo -e "${YELLOW}Press Ctrl+C to stop${NC}"

python manage.py runserver
