#!/bin/bash

DEPLOY_DIR="$HOME/devops-autodeploy/deploy"
LOG_FILE="$HOME/devops-autodeploy/logs/monitor.log"

if [ -d "$DEPLOY_DIR" ]; then
	echo "$(date '+%F %T') - Deployment folder exists." >> "$LOG_FILE"
else
	echo "$(date '+%F %T') - Deployment folder missing" >> "$LOG_FILE"
fi

DISK=$(df -h  | grep "$HOME")
echo "$(date '+%F %T') - Disk Usage: $DISK" >> "$LOG_FILE"

echo "Monitoring success"
