#!/bin/bash

# Get the three-digit number from the user
read -p "Enter a three-digit number: " num

# Check if the number is actually three digits
if [[ $num -gt 99 && $num -lt 1000 ]]; then

  # Extract the digits using arithmetic operations
  hundreds_digit=$((num / 100 % 10))
  middle_digit=$((num / 10 % 10))
  units_digit=$((num % 10))

  # Calculate the sum of the terminal digits
  sum_of_terminal_digits=$((hundreds_digit + units_digit))

  # Check if the middle digit matches the sum
  if [[ $middle_digit -eq $sum_of_terminal_digits ]]; then
    echo "The middle digit is equal to the sum of the terminal digits."
  else
    echo "The middle digit is not equal to the sum of the terminal digits."
  fi

else
  echo "Invalid input. Please enter a three-digit number."
fi

