#!/bin/bash

is_prime(){
	local num=$1

	if [ $num -lt 2 ]
	then 
		return 1
	fi

	for ((i=2; i*i<=$num; i++))
	do
		if [ $(($num % $i)) -eq 0 ]
		then
			return 1
		fi
	done

	return 0
}

echo "low"
read low
echo "upper"
read upp

for((num=$low; num<=$upp; num++))
do
	if is_prime $num 
	then
		echo $num "is a prime number"
	fi
done
