#!/bin/bash

RED='\033[0;31m'
NC='\033[0m'

read -p "👤 Enter username to check: " USERNAME

if id "$USERNAME" &>/dev/null; then
    echo "✅ User '$USERNAME' exists on the system."
else
    echo -e ${RED}"❌ User '$USERNAME' does not exist.${NC}"
fi