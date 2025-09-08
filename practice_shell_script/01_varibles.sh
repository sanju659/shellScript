#!/bin/bash

echo "This is something"

#name="Oracle"
#age=35
#salary=473.9321
#echo "Your name is: "$name
#echo "Your age is: "$age
#echo "Your salary is: $"$salary
#environment variable
#echo "shell--> "$SHELL
#echo "user --> "$USER
# echo "path--> "$PATH
# echo "pwd --> "$PWD

# read -p "Name: " name
# read -p "Roll No: " roll
# echo " "
# echo "Name is: " $name
# echo "Roll number is: " $roll

# current_directory=`pwd`
# echo "your directory: "$current_directory

#read -p "Enter the value of x: " x
#read -p "Enter the value of y: " y
#addition=$((x+y))
#subtraction=$((x-y))
#division=$((x/y))
#multiplication=$((x*y))
#echo "(x+y) is: " $addition
#echo "(x-y) is: " $subtraction
#echo "(x/y) is: " $division
#echo "(x*y) is: " $multiplication

read -p "Enter a: " a
read -p "Enter b: " b

if [ $a -eq $b -o $a -gt $b ]
then
	echo "a > b"
fi
