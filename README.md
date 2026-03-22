# work-environment-generator
### Simple bash script for creating project environment

### Features

The script will create project environment consisting:
- main project directory
- scr, bin, docs, tests subdirectories
Additional options:
- initialize a Git repository
- open the project in VS Code

### Usage:
1. Clone the repository: `git clone` <repo-url>
2. Make the script executable: `chmod +x workenvgenerator.sh`
3. Run the script: `./workenvgenerator` <project-directory>

To make the script available system-wide, move it to your local binary directory, e.g.:

`mv workenvgenerator.sh /usr/local/bin/workenvgenerator`

### Requirements
- Linux
- Bash

#### Notes

This is a simple utility script and may be extended with additional features in the future.
