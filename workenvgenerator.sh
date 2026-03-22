#!/usr/bin/env bash

if [ -z "$1" ]; then
        echo "Error: project name cannot be empty!"
        exit 1
else
        project=$1
fi

mkdir -p "$project"/{src,bin,docs,tests}
echo "# Project: $project" > "$project"/README.md
echo "Structure of $project project was created!"

read -r -p "Do you want to initialize Git repository? (y/n): "  answer
if [[ "$answer" == "y" || "$answer" == "Y" ]]; then
        cd "$project" || exit
        git init
        touch .gitignore
        echo "Git initialized in $(pwd)"
fi

read -r -p "Do you want to open project in VS Code? (y/n): " code
if [[ "$answer" == "y" || "$answer" == "Y" ]]; then
       code .
fi
