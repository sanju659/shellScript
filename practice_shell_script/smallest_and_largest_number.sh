#!/bin/bash

smallest_largest_num()
{
	smallest_num=${array[0]}
	largest_num=${array[0]}

	for num in "${array[@]}"
	do
		if [ $num -lt $smallest_num ]
		then 
			smallest_num=$num
		elif [ $num -gt $largest_num ]
		then
			largest_num=$num
		fi
	done

	echo $smallest_num "is the smallest number"
	echo $largest_num "is the largest number"
}

array=(29 17 42 38 21 54 15 82 41 67)
smallest_largest_num
