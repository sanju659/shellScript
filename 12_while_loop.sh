!/bin/bash

# i=0
# while [ $i -le 4 ]
# do
# 	echo "Good luck"
# 	let i++;
# done


array=(31 23 25 46 75)
i=0
while [ $i -le 4 ]
do
	echo ${array[i]}
	let i++;
done