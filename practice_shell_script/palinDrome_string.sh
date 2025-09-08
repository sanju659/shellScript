#!/bin/bash

echo "Enter a word"
read word

reverse=$(echo "$word" | rev)

if [ $word == $reverse ]
then
	echo "palindrome"
else
	echo "not palindrome"
fi

