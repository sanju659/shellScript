#!/bin/bash

#read -p "enter your age:" age
#if [ $age -gt 18 ]
#then
#	echo "You can Drink"
#elif [ $age -eq 18 ]
#then
#	echo "You can Drink"
#else
#	echo "You can't Drink"
#fi


echo "enter a number between 1 to 4: "
read num

case $num in
	1)
		echo "this is number 1"
		;;
	2)
		echo "this is number 2"
		;;
	3)
		echo "this is number 3"
		;;
	4)
		echo "this is number 4"
		;;
	*)
		echo "This is number $num"
esac
