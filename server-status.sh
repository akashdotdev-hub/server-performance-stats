#!/bin/bash

echo "####==== SERVER PERFORMANCE STATUS ====####"
echo ""

echo "==== CPU USAGE ===="

# $8 = idle CPU → subtract from 100 to get usage
top -bn1 | grep "Cpu(s)" | awk '{printf "CPU Usage: %.2f%%\n", 100-$8}'

echo ""

echo "####==== MEMORY USAGE ====####"

# NR==2 selects memory row → $2 total, $3 used, $4 free
free -m | awk 'NR==2 {printf "Total Memory: %s MB\nUsed Memory: %s MB\nFree Memory: %s MB\nUsage: %.2f%%\n",$2,$3,$4,$3*100/$2}'

echo ""

echo "####==== DISK USAGE ====####"

# Extract root disk usage and format Total, Used, Free and Usage from df output
df -h / | awk 'NR==2{printf "Total: %s\nUsed: %s\nFree: %s\nUsage: %s\n",$2,$3,$4,$5}'

echo ""

echo "####==== Top 5 CPU Processes ====####"

# List all processes sorted by highest CPU usage and display the top 5
ps aux --sort=-%cpu | head -6

echo ""

echo "####==== Top 5 Memory Processes ====####"

# List all processes sorted by highest Memory usage and display the top 5
ps aux --sort=-%mem | head -6


echo "####==== SYSTEM INFORMATION ====####"

# OS Version
echo "OS Version:"
cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '"'

echo ""

# System uptime
echo "System Uptime:"
uptime -p

echo ""

# Load Average
echo "Load Average:"
uptime | awk -F'load average:' '{ print $2 }'

echo ""

# Logged in users
echo "Logged In Users:"
who

echo ""

echo "####==== FAILED LOGIN ATTEMPTS ====####"

# Count failed login attempts
grep "Failed password" /var/log/auth.log 2>/dev/null | wc -l

echo ""