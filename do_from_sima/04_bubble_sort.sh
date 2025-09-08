#!/bin/bash

echo "Enter the number of elements you want in array "
read num

echo "Enter the array elements "
i=0
while [ $i -lt $num ]
do
	read arr[$i]
	let i++
done

echo "Array elements are "
i=0
while [ $i -lt $num ]
do
	echo ${arr[$i]}
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

i=0
echo "Number after sorting"
while [ $i -lt $num ]
do
	echo ${arr[$i]}
	let i++
done
