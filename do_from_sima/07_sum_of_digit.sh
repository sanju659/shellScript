#!/bin/bash

echo "enter a number"
read num

while [ $num -gt 0 ]
do
	rem=`expr $num % 10`
	sum=`expr $sum + $rem`
	num=`expr $num / 10`
done
echo $sum

