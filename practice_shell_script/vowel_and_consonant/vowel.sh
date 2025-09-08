#!/bin/bash

file_name=$1

if [ ! -f "$file_name" ]
then
	echo "'$file_name' does not exist"
	exit 1
fi

count=$(tr -cd 'aeiouAEIOU' < "$file_name" | wc -c)
count2=$(tr -cd 'bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ' < "$file_name" | wc -c)
count3=$(wc -c < "$file_name")
echo "vowel found: $count"
echo "consonant found: $count2"
echo "alphabet found: $count3"




