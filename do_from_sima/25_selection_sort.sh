#!/bin/bash

echo "How many element you want in array ? "
read num

i=0
while [ $i -lt $num ]
do
	read arr[$i]
	let i++
done

for ((i=0; i<num-1; i++))
do
	min_index=$i
	for ((j=i+1; j<num; j++))
	do
		if [ ${arr[$j]} -lt ${arr[$min_index]} ]
		then
			min_index=$j
		fi
	done

	swap=${arr[$i]}
	arr[$i]=${arr[$min_index]}
	arr[$min_index]=$swap
done

echo "Output.."
i=0
while [ $i -lt $num ]
do
	echo ${arr[$i]}
	let i++
done
