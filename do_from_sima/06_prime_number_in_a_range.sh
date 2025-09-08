#!/bin/bash

is_prime(){

	local num=$1

	if [ $num -lt 2 ]
	then
		return 1
	fi

	for((i=2;i*i<=$num;i++))
	do
		if [ `expr $num % $i` -eq 0 ]
		then
 				return 1
		fi
	done


	return 0


}

read -p "Enter the lower bound of range: " lower
read -p "Enter the upper bound of range: " upper

echo "prime number between $lower and $upper are: "
for((num=$lower;num<=$upper;num++))
do
	if is_prime $num 
	then
		echo $num
	fi
done
