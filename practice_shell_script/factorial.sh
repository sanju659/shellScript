#!/bin/bash

# Function to calculate factorial
factorial() {
    if [ $1 -eq 0 ]; then
        echo 1
    else
        # echo $(( $1 * $(factorial $(( $1 - 1 ))) ))
        echo $(( $1 * $(factorial `expr $1 - 1`) ))
    fi
}

# Main script
sum=0
echo "Enter the value of n:"
read n

for ((i = 1; i <= n; i++)); do
    fact=$(factorial $i)
    sum=$((sum + fact))
done

echo "Sum of the series up to $n terms is: $sum"

