#!/bin/bash

#echo " "
#all_files=$(ls )
#echo "$all_files"

echo " "
echo "Enter the file name in which you want to know the number of vowel "
read file_name

if [ ! -f "$file_name" ]
then
	echo "'$file_name' does not exist "
	exit 1
fi

count_vowel=$(tr -cd 'aeiouAEIOU' < "$file_name" | wc -c)
#count=$(grep -oE '\b[a-zA-Z] * [aeiouAEIOU][a-zA-Z] *\b' "vowel.txt"| wc -c)
#echo "$count"

echo "Number of vowels in '$file_name' is '$count_vowel' "
