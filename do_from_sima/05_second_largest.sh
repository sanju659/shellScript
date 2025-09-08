#!/bin/bash

#array=(32 43 12 87 23)
echo "how many element do you want in array ?"
read num

i=0
while [ $i -lt $num ]
do
	read array[$i]
	let i++
done

largest_num=${array[0]}
second_largest_num=${array[0]}

for num in "${array[@]}"
do
	if [ $num -gt $largest_num ]
	then
		second_largest_num=$largest_num
		largest_num=$num		
	elif [ $num -gt $second_largest_num -a $num -lt $largest_num ]
	then
		second_largest_num=$num
	fi
done

echo "second largest number is: " $second_largest_num

