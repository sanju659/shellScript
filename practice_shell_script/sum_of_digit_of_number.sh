#!/bin/bash

# Function to calculate the sum of digits
calculate_sum_of_digits() {
    local number=$1
    local sum=0

    # Loop through each digit in the number
    while [ $number -gt 0 ]; do
        # Extract the last digit
        digit=$((number % 10))
        
        # Add the digit to the sum
        sum=$((sum + digit))
        
        # Remove the last digit from the number
        number=$((number / 10))
    done

    # Return the sum of digits
    echo $sum
}

# Get user input for the number
read -p "Enter a number: " input_number

# Call the function and store the result
result=$(calculate_sum_of_digits $input_number)

# Display the result
echo "Sum of digits: $result"
