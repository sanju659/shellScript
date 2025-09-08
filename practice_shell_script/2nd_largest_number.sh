#!/bin/bash

num=$1

echo "Enter '$num' elements "
i=0
while [ $i -lt $num ]
do
	read arr[$i]
	let i++
done

i=0
j=0
while [ $i -lt $num ]
do
	let j=i+1
	while [ $j -lt $num ]
	do
		if [ ${arr[$i]} -gt ${arr[$j]} ]
		then
			swap=${arr[$i]}
			arr[$i]=${arr[$j]}
			arr[$j]=$swap
		fi
		let j++
	done
	let i++
done

echo " "
i=0
while [ $i -lt $num ]
do
	echo ${arr[$i]}
	let i++
done

index=$(($num - 2))
echo "Second largest number will be: " ${arr[$index]}
