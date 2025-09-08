#!/bin/bash

num_of_files=0
num_of_directory=0

for i in *
do
	if [ -f "$i" ]
	then
		num_of_files=$(($numcount=$())
	elif [ -d "$i" ]
	then 
		num_of_directory=`expr $num_of_directory + 1`
	fi
# echo "$i"
done

echo "Number of files: " $num_of_files
echo "Number of directory: " $num_of_directory
