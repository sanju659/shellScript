#!/bin/bash

# Function to find the sum of digits
sum_of_digits() {
    local num=$1
    local sum=0

    # Loop through each digit of the number
    while [ $num -gt 0 ]; do
        digit=$(( num % 10 ))  # Extract the last digit
        sum=$(( sum + digit )) # Add the digit to the sum
        num=$(( num / 10 ))    # Remove the last digit
    done
    echo $sum
}

# Main program
read -p "Enter a number: " number
result=$(sum_of_digits $number)
echo "Sum of digits of $number is: $result"