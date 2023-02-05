#!/bin/bash

RED="\e[31m"
ENDCOLOR="\e[0m"

echo "EscalationPath.sh"
echo ""
echo "------------------------------------------"
echo -e "${RED}Getting crontab${ENDCOLOR}"
echo ""

cat /etc/crontab

echo ""
echo "------------------------------------------"
echo -e "${RED}Getting sudo -l${ENDCOLOR}"
echo ""
sudo -l

echo ""
echo "------------------------------------------"
echo -e "${RED}Getting capabilities${ENDCOLOR}"
echo ""
getcap -r / 2>/dev/null

echo ""
echo "------------------------------------------"
echo -e "${RED}Getting SUID files${ENDCOLOR}"
echo ""

find / -type f -perm -04000 -ls 2>/dev/null

echo ""
echo "------------------------------------------"
echo -e "${RED}Getting NFS${ENDCOLOR}"
echo ""

cat /etc/exports