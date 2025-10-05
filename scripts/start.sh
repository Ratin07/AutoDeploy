#!/bin/bash

SCRIPTS_DIR="$HOME/devops-autodeploy/scripts"

for script in "$SCRIPTS_DIR"/*.sh; do

  if [[ "$(basename "$script")" == "start.sh" ]]; then
	continue
  fi
	bash "$script"
done

echo "All scripts executed successfully"
