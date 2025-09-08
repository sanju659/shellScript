#!/bin/bash

# print_array()
# {
# 	local arr=("$@")

# 	for i in "${array[@]}"
# 	do
# 		echo "$i"
# 	done
# }

# echo "Enter how many elements you want in your array ? "
# read num

# echo "Enter your elements "
# i=0
# while [ $i -lt $num ]
# do
# 	read array[$i]
# 	i=`expr $i + 1`
# done

# print_array "${array[@]}"

#!/bin/bash

array=(2 5 7 12 18 20 25 30)
target=30

left=0
right=$((${#array[@]} - 1))

while [ $left -le $right ]; do
    mid=$(( ($left + $right) / 2 ))
    mid_value=${array[mid]}
    
    if [ $mid_value -eq $target ]; then
        echo "Element $target found at index $mid"
        exit 0
    elif [ $mid_value -lt $target ]; then
        left=$(( $mid + 1 ))
    else
        right=$(( $mid - 1 ))
    fi
done

echo "Element $target not found"
exit 1

