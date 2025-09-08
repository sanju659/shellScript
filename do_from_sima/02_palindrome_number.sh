#!/bin/bash

echo "enter lower and upper limit"
read low
read high


while [ $low -le $high ]
do
	number=$low
	sum=0
	while [ $number -ge 1 ]
	do
		rem=`expr $number % 10`
		sum=`expr $sum \* 10 + $rem`
		number=`expr $number / 10`
	done

	if [ $sum -eq $low ]
	then
		echo $sum "Is a palindrone number"
	fi
	let low++
done
