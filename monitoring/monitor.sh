#!/bin/bash
#############
#############
#Author: Ashin
#Date: 16/10/2026
#version: v1
echo "=================================="
echo "       SYSTEM MONITORING"
echo "=================================="

# 1. CPU Usage
echo ""
echo "===== CPU USAGE ====="
top -bn1 | grep "Cpu(s)"

# 2. Running Services
echo ""
echo "===== RUNNING SERVICES ====="
if command -v systemctl >/dev/null 2>&1; then
    systemctl list-units --type=service --state=running --no-pager
else
    service --status-all 2>/dev/null
fi

# 3. Memory Usage
echo ""
echo "===== MEMORY USAGE ====="
free -h

# 4. Disk Usage
echo ""
echo "===== DISK USAGE ====="
df -h

echo ""
echo "=================================="
echo "    MONITORING COMPLETED"
echo "=============="

