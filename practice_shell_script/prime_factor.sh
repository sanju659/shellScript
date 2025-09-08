#!/bin/bash

echo "Enter a number"
read num

#output=$(factor $num)
#echo $output

output=$(echo $num | factor)
echo $output
