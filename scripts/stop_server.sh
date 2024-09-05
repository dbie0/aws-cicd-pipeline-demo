#!/bin/bash
systemctl stop --quiet flaskapp.service 2>/dev/null
echo "systemctl stop passed"
exit 0