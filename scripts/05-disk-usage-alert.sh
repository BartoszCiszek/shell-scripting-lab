#!/bin/bash

THRESHOLD=80
USAGE=$(df / | grep / | awk '{print $5}' | sed 's/%//')

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # no color

echo -e "📊 Current disk usage: ${USAGE}%"

if [ "$USAGE" -gt "$THRESHOLD" ]; then
    echo -e "${RED}⚠️ Warning! Disk usage has exceeded ${THRESHOLD}%!${NC}"
else
    echo -e "${GREEN}✅ Disk usage is under control.${NC}"
fi