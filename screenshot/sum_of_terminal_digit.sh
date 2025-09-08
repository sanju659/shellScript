#!/bin/bash

# Read the number from the user
read -p "Enter a three-digit number: " number

# Check if the number is exactly three digits long
if [[ ${#number} -ne 3 ]]; then
  echo "Invalid input: Please enter a three-digit number."
  exit 1
fi

# Extract individual digits
first_digit=${number:0:1}
middle_digit=${number:1:1}
last_digit=${number:2:1}

# Check if the middle digit is equal to the sum of the first and last digits
if [[ $middle_digit -eq $((first_digit + last_digit)) ]]; then
  echo "The middle digit ($middle_digit) is equal to the sum of the first ($first_digit) and last ($last_digit) digits."
else
  echo "The middle digit ($middle_digit) is not equal to the sum of the first ($first_digit) and last ($last_digit) digits."
fi
