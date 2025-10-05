#!/bin/bash

PROJECT_DIR="$HOME/devops-autodeploy"
APP_DIR="$PROJECT_DIR/app"
DEPLOY_DIR="$PROJECT_DIR/deploy"
LOG_FILE="$PROJECT_DIR/logs/deploy.log"

mkdir -p "$DEPLOY_DIR"

cp -r "$APP_DIR/"* "$DEPLOY_DIR/"

echo "$(date '+%F %T') - App deployed to $DEPLOY_DIR" >> "$LOG_FILE"
echo "Deployment complete!"
