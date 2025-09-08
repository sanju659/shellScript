#!/bin/bash

echo "Enter a binary number"
read num

length=${#num}
output1=""
output2=""

for ((i=0; i<$length; i++))
do
	if [ ${num:$i:1} == "0" ]
	then
		output1+="0"
	elif [ ${num:$i:1} == "1" ]
	then
		output2+="1"
	fi
done

echo "$output1$output2"

