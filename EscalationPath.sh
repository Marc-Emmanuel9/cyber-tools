#!/bin/bash

echo "EscalationPath.sh"
echo ""
echo "------------------------------------------"
echo "Getting crontab"
echo ""

cat /etc/crontab

echo ""
echo "------------------------------------------"
echo "Getting sudo -l"
echo ""
sudo -l

echo ""
echo "------------------------------------------"
echo "Getting capabilities"
echo ""
getcap -r / 2>/dev/null

echo ""
echo "------------------------------------------"
echo "Getting SUID files"
echo ""

find / -type f -perm -04000 -ls 2>/dev/null

echo ""
echo "------------------------------------------"
echo "Getting NFS"
echo ""

cat /etc/exports