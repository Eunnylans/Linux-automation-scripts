#!/bin/bash

# Variables
LOG_FILE="health.log"
DATE=$(date)
HOST=$(hostname)

# Get system metrics
DISK_USAGE=$(df / | awk 'NR==2 {print $5}' | tr -d '%')
MEM_USAGE=$(free | awk '/Mem:/ {printf "%.0f", $3/$2 * 100}')
CPU_LOAD=$(uptime | awk -F'load average:' '{print $2}')

# Log output

{
echo "----- $DATE | $HOST -----"

if (( DISK_USAGE > 80 )); then
    echo "WARNING: Disk usage is ${DISK_USAGE}%"
else
    echo "Disk usage: ${DISK_USAGE}%"
fi

if (( MEM_USAGE > 75 )); then
    echo "WARNING: Memory usage is ${MEM_USAGE}%"
else
    echo "Memory usage: ${MEM_USAGE}%"
fi

echo "CPU Load:$CPU_LOAD"
echo
} | tee -a "$LOG_FILE"
