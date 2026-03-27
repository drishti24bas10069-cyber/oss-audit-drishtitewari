#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Drishti Tewari

PACKAGE="python3"

echo "Checking package: $PACKAGE"
echo "-----------------------------"

# Check if package is installed
if dpkg -l | grep -q $PACKAGE; then
    echo "$PACKAGE is installed."

    # Show details
    dpkg -l | grep $PACKAGE
else
    echo "$PACKAGE is NOT installed."
fi

echo "-----------------------------"

# Case statement (philosophy lines)
case $PACKAGE in
    python3)
        echo "Python: a simple yet powerful language built for everyone."
        ;;
    apache2)
        echo "Apache: the web server that helped build the internet."
        ;;
    mysql-server)
        echo "MySQL: database powering millions of applications."
        ;;
    vlc)
        echo "VLC: play anything, anywhere — open for all."
        ;;
    *)
        echo "Open source software empowers freedom and innovation."
        ;;
esac