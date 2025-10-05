#!/bin/bash


PROJECT_DIR="$HOME/devops-autodeploy"
APP_DIR="$PROJECT_DIR/app"
SCRIPTS_DIR="$PROJECT_DIR/scripts"
LOGS_DIR="$PROJECT_DIR/logs"
JENKINS_DIR="$PROJECT_DIR/jenkins"
PIPELINE_DIR="$JENKINS_DIR/pipeline-config"

create_dir() {
if [ ! -d "$1" ]; then
	mkdir -p "$1"
	echo "$(date '+%F %T') - Created directory $1" >> "$LOGS_DIR/setup.log"
fi
}

create_file() {
	if [ ! -f "$1" ]; then
		touch "$1"
		echo "$(date '+%F %T') - Created file $1" >> "$LOGS_DIR/setup.log"
	fi
}


create_dir "$LOGS_DIR"
create_file "$LOGS_DIR/setup.log"
create_dir "$APP_DIR"
create_dir "$SCRIPTS_DIR"
create_dir "$JENKINS_DIR"
create_dir "$PIPELINE_DIR"

chmod +x "$SCRIPTS_DIR"/*.sh

if [ ! -d "$PROJECT_DIR/.git" ]; then
	git init "$PROJECT_DIR"
	echo "$(date '+%F %T') - Git repo iniialized" >> "$LOGS_DIR/setup.log"
fi

echo "Setup complete!"
