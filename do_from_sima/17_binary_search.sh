#!/bin/bash

echo "How many element do you want: ?"
read num

i=0
while [ $i -lt $num ]
do
	read arr[$i]
	let i++
done

echo " "

i=0
while [ $i -lt $num ]
do
	echo ${arr[$i]}
	let i++
done

echo "Enter the number to be searched: "
read element

low=0
high=$(($num - 1))
while [ $low -le $high ]
do    
    mid=$((( $low + $high ) / 2))
    mid_value=${arr[$mid]}
    if [ $mid_value -eq $element ];then
        echo "Element found at position" $(($mid + 1))
        exit 0
    elif [ $mid_value -lt $element ]; then
        low=$(( $mid + 1 ))
    else
        high=$(( $mid - 1 ))
    fi
done

echo "$element not found"

