#!/bin/bash

# Function to check if a number is prime
is_prime() {
    local num=$1
    if [ $num -le 1 ]; then
        return 1
    fi
    for ((i=2; i*i<=$num; i++)); do
        if [ $((num % i)) -eq 0 ]; then
            return 1
        fi
    done
    return 0
}

# Function to find prime factors
prime_factors() {
    local num=$1
    echo -n "Prime factors of $num are: "
    for ((i=2; i<=$num; i++)); do
        while [ $((num % i)) -eq 0 ]; do
            if is_prime $i; then
                echo -n "$i "
            fi
            num=$((num / i))
        done
    done
    echo
}

# Read number from user input
read -p "Enter a number: " number

# Call function to find prime factors
prime_factors $number
