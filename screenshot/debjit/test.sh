#!/bin/bash

if [ $# -eq 0 ];then
echo "usage:$0"
exit 1
fi

if [ ! -f "$1" ];then
echo "file not present"
exit 1
fi

file=$1
word_to_detete="summer"
replace_word=" "
sed -i "s/$word_to_detete/$replace_word/g" "$file"
#sed -i "s/\b$word_to_delete\b//g" "$file"
#tr '[:lower:]' '[:upper:]' < "$file" > "$file.tmp" && mv "$file.tmp" "$file"
#count=$(tr -cd 'aeAE' < "$file" | wc -c)
#echo $count

#grep -v 'summer' "$file" > "$file.tmp" && mv "$file.tmp" "$file"