#!/bin/bash

echo "Enter the number: "
read num
sum=0
while [ $num -gt 0 ]
do
	rem=`expr $num % 10`
	sum=`expr $sum + $rem`
	num=`expr $num / 10`
done
echo "The sum is: " $sum
