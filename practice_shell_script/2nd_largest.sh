array=(32 43 12 87 23)

largest_num=${array[0]}
second_largest_num=${array[0]}

for num in "${array[@]}"
do
        if [ $num -gt $largest_num ]
        then
                second_largest_num=$largest_num
                largest_num=$num
        elif [ $num -gt $second_largest_num -a $num -lt $largest_num ]
        then
                second_largest_num=$num
        fi
done

echo "second largest number is: " $second_largest_num

