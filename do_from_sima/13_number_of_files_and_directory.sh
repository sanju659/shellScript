#!/bin/bash

# Count files and directories in the current working directory

# Count files
file_count=$(find . -maxdepth 1 -type f | wc -l)

# Count directories
dir_count=$(find . -maxdepth 1 -type d | wc -l)

echo "Number of files: $file_count"
echo "Number of directories: $dir_count"

