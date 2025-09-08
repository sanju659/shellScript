#!/bin/bash

echo "Enter a number "
read num
number=$num
#reverse_num=$(echo $num | rev)

sum=0
while [ $num -gt 0 ]
do	
	rem=$(($num % 10))
	sum=$((($sum * 10) + $rem))
	num=$(($num / 10))
done

echo $sum
