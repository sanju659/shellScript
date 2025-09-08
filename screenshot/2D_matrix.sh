#!/bin/bash

declare -A matrix

# Define row and column count
ROWS=2
COLS=3

# Loop through rows and columns to set values
for (( i=0; i<$ROWS; i++ )); do
  for (( j=0; j<$COLS; j++ )); do
    read -p "Enter value for row $((i+1)), column $((j+1)): " value
    matrix["$i,$j"]=$value
  done
done

# Accessing elements
# Use the custom index with row and column values separated by comma
echo "Element at row 1, column 2: ${matrix[1,2]}"

