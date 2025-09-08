#!/bin/bash

echo "Enter a number "
read num
echo "Enter the base of the number "
read inputBase
echo "Enter the base the number to be converted: "
read outputBase

decimel=$(echo "ibase=$inputBase; $num" | bc)
output=$(echo "obase=$outputBase; $decimel" | bc)

echo "input number is $num and base $inputBase"
echo "output number is $output and base $outputBase"
