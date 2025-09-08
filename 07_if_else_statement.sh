#!/bin/bash

read -p "Enter n1: " n1
read -p "Enter n2: " n2

if [ $n1 -eq $n2 -a $n1 > $n2 ]
then
	echo "n1 > n2"
fi
