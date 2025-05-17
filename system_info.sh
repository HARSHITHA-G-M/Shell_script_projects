#!/bin/bash

echo "==== System Information ===="
echo "Hostname       : $(hostname)"
echo "OS             : $(uname -o)"
echo "Kernel Version : $(uname -r)"
echo "Uptime         : $(uptime -p)"
echo "CPU Info       : $(lscpu | grep 'Model name' | awk -F: '{print $2}')"
echo "Memory Usage   : $(free -h | grep Mem | awk '{print $3 " / " $2}')"
echo "Disk Usage     : $(df -h / | grep / | awk '{print $3 " / " $2}')"
echo "IP Address     : $(hostname -I | awk '{print $1}')"

