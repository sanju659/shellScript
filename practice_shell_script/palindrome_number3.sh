#!/bin/bash

echo "Enter a number: "
read num
number=$num

sum=0

while [ $num -ge 1 ]
do
	rem=$(($num % 10))
	sum=$((($sum * 10)+ $rem))
	num=$(($num / 10))
done

if [ $sum -eq $number ]
then
	echo $number "is a palindrome number"
else
	echo $number "is not a palindrome number"
fi
