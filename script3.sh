#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Drishti Tewari

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done

echo "----------------------"

# Check Python config directory
PYTHON_DIR="/usr/lib/python3"

if [ -d "$PYTHON_DIR" ]; then
    PERMS=$(ls -ld $PYTHON_DIR | awk '{print $1, $3, $4}')
    echo "Python Directory Found!"
    echo "$PYTHON_DIR => Permissions: $PERMS"
else
    echo "Python directory not found."
fi