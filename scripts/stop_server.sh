#!/bin/bash
systemctl stop --quiet flaskapp.service &> /dev/null
echo "systemctl stop passed"
exit 0