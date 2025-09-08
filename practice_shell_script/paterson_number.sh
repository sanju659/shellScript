#!/bin/bash

echo "enter a number"
read num

no=$num
sum=0

while [ $no -ge 1 ]
do
	rem=`expr $no % 10`
	no=`expr $no / 10`
	mulsum=1
	while [ $rem -ge 1 ]
	do
		mulsum=`expr $mulsum \* $rem`
		rem=`expr $rem - 1`
	done
	sum=`expr $sum + $mulsum`
done


if [ $sum -eq $num ]
then
	echo "pater son numer"
else
	echo "not a paterson number"
fi

