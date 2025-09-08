#!/bin/bash

echo "How many number do you want in your series ?"
read num

fib0=0
fib1=1

echo $fib0
echo $fib1
num=`expr $num - 2`
while [ $num -gt 0 ]
do
	fib2=`expr $fib0 + $fib1`
	echo $fib2
	fib0=$fib1
	fib1=$fib2
	let num--
done
