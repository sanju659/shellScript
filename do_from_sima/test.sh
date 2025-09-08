#!/bin/bash

#file_name="20_prime_factor_of_a_number.sh"
#cat_command=$(cat "$file_name")
#echo "'$cat_command'"

#commd=$(pwd )
#echo $commd

echo "entrer size:"
read size

for (( i = 0; i < size; i++))
do
	read arr[$i]
done

for (( i= 0; i < size; i++ ))
do
	echo ${arr[$i]}
done
