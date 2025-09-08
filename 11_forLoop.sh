#!/bin/bash

# echo "planet"

# for((i=0;i<=5;i++))
# {
# 	echo "planet"
# }

# for i in 1 2 3 4 5 6 7 8 9 10
# do
# 	echo "Iteration: " $i
# done


# for i in ayush ayushi
# do
# 	if [ $i == ayush ]
# 	then
# 		echo "Ayush is a good boy"
# 	fi
# done


myarray=(Shanghai HongKong New_York San_fransisco Moscow New_Delhi Tokyo Melbourne)

for ((i = 0; i < 7; i++))
{
	echo ${myarray[i]}
}