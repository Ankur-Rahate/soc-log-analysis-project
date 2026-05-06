#!/bin/bash

echo "Checking failed login attempts..."

grep "Failed" auth.log | awk '{print $6}' | sort | uniq -c > suspicious_ips.txt

echo ""
echo "Suspicious IP Activity:"
cat suspicious_ips.txt

echo ""
echo "Analysis Complete."
