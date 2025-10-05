#!/bin/bash
set -e

DEPLOY_DIR="$HOME/devops-autodeploy/deploy"
LOGS_DIR="$HOME/devops-autodeploy/logs"

if [ -d "$DEPLOY_DIR" ]; then
	rm -r "$DEPLOY_DIR"
	echo "$(date '+%F %T') - Deployment folder removed." >> "$LOGS_DIR/monitor.log"
fi

tar -czf "$LOGS_DIR/logs_backup_$(date '+%F').tar.gz" "$LOGS_DIR"/*.log
echo "Cleanup done. Logs archived"
