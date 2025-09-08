#!/bin/bash

echo "Enter a three digit number "
read num

if [ ${#num} -ne 3 ]
then
	echo "Enter a three digit number please"
	exit 1
fi

i=0
while [ $i -lt ${#num} ]
do
	echo ${num:$i:1}
	let i++
done

