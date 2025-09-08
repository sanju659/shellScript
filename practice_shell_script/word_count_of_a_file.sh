#!/bin/bash

# Function to count the frequency of a word in a text file
word_frequency() {
    local file="$1"
    local word="$2"
    local count=$(grep -o -i "\<$word\>" "$file" | wc -l)
    echo "Frequency of '$word' in '$file': $count"
}

# Main script
# if [ $# -ne 2 ]; then
#     echo "Usage: $0 <file> <word>"
#     exit 1
# fi

# file=$1
# word=$2

# if [ ! -f "$file" ]; then
#     echo "Error: File '$file' not found."
#     exit 1
# fi

echo "file and word name"
read file
read word
word_frequency "$file" "$word"

