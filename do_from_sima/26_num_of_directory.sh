#!/bin/bash

current_directory=$(pwd)

for dir in "$current_directory"/*/
do
	dir_name=$(basename "$dir")
	
	dir_length=${#dir_name}
	#echo $dir_name
	#echo $dir_length

	if [ $dir_length -gt 5 ]
	then
		echo "$dir_name"
	fi
done
