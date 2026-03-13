#!/bin/bash

echo "####==== SERVER PERFORMANCE STATUS ====####"
echo ""

echo "====____ CPU USAGE ____===="
# $8 is the idle CPU percentage, so we subtract it from 100 to get the actual CPU usage.
top -bn1 | grep "Cpu(s):" | awk'{print "Cpu Usage:" 100 - $8 "%" }
echo ""

echo "====____ MEMORY USAGE ____===="
# The free command with the -m option displays memory usage in megabytes. We use awk to extract the total and free memory values from the second line of the output (NR==2) and calculate the percentage of memory usage.
free -m | awk 'NR==2{"Total Memory: %s \nFree Memory: %s \n Usage: %.2f%%\n",$2,$3,$4,$3*100/$2}'
echo ""


