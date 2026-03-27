#!/bin/bash
# Script 1: System Identity Report
# Author: Drishti Tewari

# --- Variables ---
STUDENT_NAME="Drishti Tewari"
SOFTWARE_CHOICE="Python"

# --- System info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DATE=$(date)

# Get Linux distribution name
DISTRO=$(cat /etc/os-release | grep PRETTY_NAME | cut -d '"' -f2)

# --- Display ---
echo "======================================"
echo "   Open Source Audit — $STUDENT_NAME"
echo "======================================"
echo "Software : $SOFTWARE_CHOICE"
echo "--------------------------------------"
echo "Distro   : $DISTRO"
echo "Kernel   : $KERNEL"
echo "User     : $USER_NAME"
echo "Uptime   : $UPTIME"
echo "Date     : $DATE"
echo "License  : GNU General Public License (GPL)"
echo "======================================"