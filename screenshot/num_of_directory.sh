#!/bin/bash

# Get the current working directory
current_dir=$(pwd)

# Loop through each directory in the current directory
for dir in "$current_dir"/*/; do
    # Extract directory name
    dir_name=$(basename "$dir")
    
    # Get the length of the directory name
    dir_length=${#dir_name}
    
    # Check if the length of the directory name is greater than 5
    if [ "$dir_length" -gt 5 ]; then
        echo "$dir_name"
    fi
done
