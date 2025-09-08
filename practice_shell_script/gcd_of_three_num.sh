#!/bin/bash

# Function to find the GCD of two numbers using the Euclidean algorithm
gcd() {
    local a=$1
    local b=$2
    local remainder

    while [ $b -ne 0 ]
    do
        remainder=`expr $a % $b`
        a=$b
        b=$remainder
    done

    echo $a
}

# Function to find the GCD of three numbers
gcd_three_numbers() {
    local num1=$1
    local num2=$2
    local num3=$3
    local gcd_num1_num2
    local gcd_all

    gcd_num1_num2=$(gcd $num1 $num2)
    gcd_all=$(gcd $gcd_num1_num2 $num3)

    echo "The GCD of $num1, $num2, and $num3 is: $gcd_all"
}

# Main script
echo "Enter three numbers:"
read num1
read num2
read num3
gcd_three_numbers $num1 $num2 $num3

