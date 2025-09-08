#!/bin/bash

echo "Enter the number: "
read num

echo "Enter the base of the number: "
read base1

echo "Enter the base of the number to be converted: "
read base2

decimel=$(echo "ibase=$base1; $num" | bc)
result=$(echo "obase=$base2; $decimel" | bc)

echo $result
