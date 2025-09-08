#!/bin/bash

echo "Enter the number of element you want in array "
read num

i=0
while [ $i -lt $num ]
do
	read array[$i]
	let i++
done

echo " "
i=0
while [ $i -lt $num ]
do
	echo ${array[$i]}
	let i++
done

i=0 
j=0
while [ $i -lt $num ]
do
	j=`expr $i + 1`
	while [ $j -lt $num ]
	do
		if [ ${array[$i]} -gt ${array[$j]} ]
		then
			swap=${array[$i]}
			array[$i]=${array[$j]}
			array[$j]=$swap
		fi
		let j++
	done
	let i++
done

echo " "
i=0
while [ $i -lt $num ]
do
        echo ${array[$i]}
        let i++
done

