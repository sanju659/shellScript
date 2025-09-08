#!/bin/bash

# Define a function to print array elements
print_array() {
    local arr=("$@")  # Get all arguments into an array
    for elem in "${arr[@]}"; do
        echo "$elem"
    done
}

# Define an array
echo "How many elements do you want in your array: "
read num

for((i=0;i<num;i++))
	{
		read my_array[$i]
	}
#my_array=(1 2 3 4 5)

# Call the function and pass the array as an argument
print_array "${my_array[@]}"

