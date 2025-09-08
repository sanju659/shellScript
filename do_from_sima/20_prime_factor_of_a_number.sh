#!/bin/bash

echo "Enter number"
read num

#factors=$(factor $num)
factors=$(echo $num | factor)

echo $factors
