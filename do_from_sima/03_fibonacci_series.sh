#!/bin/bash

echo "Enter how many number to be printed for the fibonacci series "
read num
fib1=0
fib2=1
echo "Fibonacci series is "
echo $fib1
echo $fib2

num=`expr $num - 2`
while [ $num -gt 0 ]
do
	fib3=`expr $fib1 + $fib2`
	echo $fib3
	fib1=$fib2
	fib2=$fib3
	let num--
done
