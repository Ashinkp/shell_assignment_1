#!/bin/bash
#############################
# Author: Ashin
# Date: 17/10/2026
# Version: v2
#############################

echo "=================================="
echo "        SYSTEM MONITORING"
echo "  Date : $(date '+%Y-%m-%d %H:%M:%S')"
echo "  Host : $(hostname)"
echo "=================================="

echo ""
echo "===== UPTIME ====="
uptime -p

echo ""
echo "===== CPU USAGE ====="
top -bn1 | grep "Cpu(s)"

echo ""
echo "===== MEMORY USAGE ====="
free -h

echo ""
echo "===== DISK USAGE ====="
df -h

echo ""
echo "===== TOP 5 PROCESSES (BY MEMORY) ====="
ps aux --sort=-%mem | head -6

echo ""
echo "===== RUNNING SERVICES ====="
if command -v systemctl >/dev/null 2>&1; then
    systemctl list-units --type=service --state=running --no-pager
else
    service --status-all 2>/dev/null
fi

echo ""
echo "=================================="
echo "     MONITORING COMPLETED"
echo "=================================="
echo ""
