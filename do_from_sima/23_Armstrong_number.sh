#!/bin/bash

echo "Enter a number "
read num
number=$num
sum=0

while [ $num -gt 0 ]
do
	rem=$(($num % 10))
	sum=$(($sum +($rem * $rem * $rem)))
	num=$(($num / 10))
done

if [ $sum -eq $number ]
then
	echo " '$number' is a armstrong number "
else
	echo "'$number' is not a armstrong number "
fi

