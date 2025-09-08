#!/bin/bash

# Check if the correct number of arguments are provided
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <word_to_replace> <replacement_word> <filename>"
    exit 1
fi

word_to_replace="$1"
replacement_word="$2"
filename="$3"

# Check if the file exists
if [ ! -f "$filename" ]; then
    echo "File '$filename' not found. Exiting..."
    exit 1
fi

# Replace the word in the file and save it
# sed -i "s/\<$word_to_replace\>/$replacement_word/g" "$filename"
sed -i "s/$word_to_replace/$replacement_word/g" "$filename"

# Display the result
echo "The word '$word_to_replace' has been replaced with '$replacement_word' in the file '$filename'."
