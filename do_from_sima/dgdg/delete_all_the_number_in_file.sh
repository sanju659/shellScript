#!/bin/bash

# Check if a filename is provided as argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 filename"
    exit 1
fi

file_name="$1"

# Check if the file exists
if [ ! -f "$file_name" ]; then
    echo "File $file_name does not exist."
    exit 1
fi

# Use sed to remove all numbers from the file and overwrite the original file
sed -i "s/[0-9]//g" "$file_name"

echo "Numbers removed from $file_name."
