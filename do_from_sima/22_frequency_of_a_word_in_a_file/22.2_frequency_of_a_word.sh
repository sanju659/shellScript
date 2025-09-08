#!/bin/bash

# Check if the user provided a word and a file name
# if [ $# -ne 2 ]; then
#     echo "Usage: $0 <word> <filename>"
#     exit 1
# fi

word="$1"
filename="$2"

# Check if the file exists
if [ ! -f "$filename" ]; then
    echo "File '$filename' not found. Exiting..."
    exit 1
fi

# Count the frequency of the word in the file
#frequency=$(grep -o "\<$word\>" "$filename" | wc -l)
frequency=$(grep -o "$word" "$filename" | wc -l)
# Display the result
echo "The word '$word' appears $frequency times in the file '$filename'."
