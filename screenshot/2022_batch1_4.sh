#!/bin/basih

num=$1

echo "Enter '$num' elements "

i=0
while [ $i -lt $num ]
do
	read arr[$i]
	let i++
done

i=0
count=0
while [ $i -lt $num ]
do
	if [ ${arr[$i]} -ge 10 ]
	then
		let count++
	fi
	let i++
done

i=0
sum=0
while [ $i -lt $num ]
do
	if [ ${arr[$i]} -ge 10 ]
	then
		sum=$(($sum + ${arr[$i]}))
	fi
	let i++
done

echo " "
result=$(($sum / $count))
echo "$result"


