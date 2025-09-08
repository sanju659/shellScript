#!/bin/bash

file_name=$1

if [ ! -f "$file_name" ]
then
	echo "Error '$file_name' not found"
	exit 1
fi

#lines=$(wc -l < "$file_name")
#words=$(wc -w < "$file_name")
#char=$(wc -c < "$file_name")

value=$(cat $file_name)
lines=$(echo "$value" | wc -l)
words=$(echo "$value" | wc -w)
char=$(echo "$value" | wc -c)

echo "lines" $lines
echo "words" $words
echo "characters" $char
