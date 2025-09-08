#!/bin/bash

low=$1
high=$2

count1=0
count2=0
count3=0
for ((num=$low; num<=$high; num++))
do  
	if [ $(($num % 5)) -eq 0 -a $(($num % 10)) -eq 0 ]
	then
		let count1++
	fi
done

for ((num=$low; num<=$high; num++))
do
	if [ $(($num % 5)) -eq 0 ]
	then
		let count2++
	fi
done

for ((num=$low; num<=$high; num++))
do
	if [ $(($num % 10)) -eq 0 ]
	then
		let count3++
	fi
done

echo "divisible by 5 and 10: " $count1
echo "divisible by 5: " $count2
echo "divisible by 10: " $count3

#!/bin/bash

# low=$1
# high=$2

# count1=0
# count2=0
# count3=0

# for ((num=$low; num<=$high; num++))
# do  
#     if [ $(($num % 5)) -eq 0 -a $(($num % 10)) -eq 0 ]
#     then
#         let count1++
#     elif [ $(($num % 5)) -eq 0 ]
#     then
#         let count2++
#     elif [ $(($num % 10)) -eq 0 ]
#     then
#         let count3++
#     fi
# done

# echo "divisible by 5 and 10: " $count1
# echo "divisible by 5: " $count2
# echo "divisible by 10: " $count3

