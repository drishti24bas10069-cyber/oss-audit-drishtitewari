#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Drishti Tewari

echo "--------------------------------------"
echo " Open Source Manifesto Generator"
echo "--------------------------------------"
echo ""

# Taking input from user
read -p "1. Name one open-source tool you use: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name something you would build and share: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# Writing manifesto
echo "--------------------------------------" > $OUTPUT
echo "Open Source Manifesto - $DATE" >> $OUTPUT
echo "--------------------------------------" >> $OUTPUT
echo "" >> $OUTPUT

echo "I believe that tools like $TOOL represent the true meaning of $FREEDOM." >> $OUTPUT
echo "As a developer, I would love to build $BUILD and share it with the world freely." >> $OUTPUT
echo "Open source allows collaboration, innovation, and growth without limits." >> $OUTPUT

echo "" >> $OUTPUT
echo "— Drishti Tewari" >> $OUTPUT

# Display result
echo ""
echo "Manifesto saved to $OUTPUT"
echo "--------------------------------------"
cat $OUTPUT