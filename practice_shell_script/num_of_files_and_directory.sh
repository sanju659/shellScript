#!/bin/bash

# Function to count files and directories
count_files_dirs() {
    local num_files=0
    local num_dirs=0

    # Loop through all entries in the current directory
    for entry in *; do
        if [ -f "$entry" ]; then
            ((num_files++))
        elif [ -d "$entry" ]; then
            ((num_dirs++))
        fi
    done

    echo "Number of files: $num_files"
    echo "Number of directories: $num_dirs"
}

# Call the function
count_files_dirs
