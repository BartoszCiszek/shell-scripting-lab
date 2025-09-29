#!/bin/bash

# service list
SERVICES=("nginx" "docker" "ssh")

echo "Checking service statuses..."

for SERVICE in "${SERVICES[@]}"; do
    systemctl is-active --quiet "$SERVICE"


#if systemctl is-active --quiet "$SERVICE"; then
#    echo "✅ $SERVICE is running""
#else
#    echo "❌ $SERVICE is NOT running!"
#fi

#LUB

    if [ $? -eq 0 ]; then
        echo "✅ $SERVICE is running"
    else
        echo "❌ $SERVICE is NOT running"
    fi
done