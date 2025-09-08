#!/bin/bash

echo "Enter a number "
read num

i=0
sum=0
while [ $i -lt ${#num} ]
do
	digit=${num:$i:1}
	sum=$(($sum + $digit))
	let i++
done

echo $sum
