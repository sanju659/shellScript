#!/bin/bash

factorial() {
        local num1=$1

	if [ $num1 -eq 0 -o $num -eq 1 ];
	then
		echo 1
	else
		echo $(($num1 * $(factorial $(($num1 - 1))) ))
	fi
}


echo "How many number you want in series"
read num

i=0
sum=0
while [ $i -le $num ]
do
fact=$(factorial $i)
sum=$((sum + fact))
let i++
done

echo $sum

# fact=$(factorial $num)
# echo $fact



