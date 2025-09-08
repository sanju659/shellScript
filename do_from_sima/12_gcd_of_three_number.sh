#!/bin/bash

gcd() 
{
	local x=$1
	local y=$2
	local remainder

	while [ $y -ne 0 ]
	do
		remainder=`expr $x % $y`

		x=$y
		y=$remainder
	done

	echo $x
}

gcd_of_three_number()
{
	local num1=$1
	local num2=$2
	local num3=$3
	local gcd_of_two_num
	local gcd_of_three_number
	gcd_of_two_num=$(gcd $num1 $num2)
	gcd_of_three_number=$(gcd $gcd_of_two_num $num3)

	echo $gcd_of_three_number	
}

echo "Enter three numbers: "
read num1
read num2 
read num3

gcd_of_three_number $num1 $num2 $num3
