#!/bin/bash

echo "enter lower and upper limit"
read low
read high


while [ $low -le $high ]
do  number=$low
	num=$low
	sum=0
	while [ $num -ge 1 ]
	do
		rem=`expr $num % 10`
		sum=`expr $sum \* 10 + $rem`
		num=`expr $num / 10`
	done

	if [ $sum -eq $number ]
	then
		echo $sum "Is a palindrone number"
	fi
	let low++
done
