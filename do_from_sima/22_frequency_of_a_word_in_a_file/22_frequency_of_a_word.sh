#!/bin/bash

echo "Enter the word to be searched "
read word

echo "Enter the file name"
read file_name

if [ -z "$word" ]
then
	echo "there is no word"
fi

if [ ! -f "$file_name" ]
then
	echo "'$file_name' does not exist"
	exit 1
fi

frequency=$(grep -o "\<$word\>" "$file_name" | wc -l) 

echo " '$word' found $frequency times in '$file_name' "
