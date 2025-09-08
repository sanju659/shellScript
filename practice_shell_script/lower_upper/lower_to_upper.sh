#!/bin/bash

file_name=$1
echo "Enter ( u ) to change lower case to upper case and ( l ) for vise versa: "
read option
if [ ! -f "$file_name" ]
then
	echo " '$file_name' does not exist "
	exit 1
fi

echo "before change"
file_content=$(cat "$file_name")
echo "$file_content"

case "$option" in
	u)
		tr '[:lower:]' '[:upper:]' < "$file_name" > "$file_name.tmp"
		mv "$file_name.tmp" "$file_name"
		;;
	l)
		tr '[:upper:]' '[:lower:]' < "$file_name" > "$file_name.tmp"
		mv "$file_name.tmp" "$file_name"
		;;
	*)
		echo "wrong input!"
		echo "please choose (u) or (l)"
		exit 1
		;;
esac

echo "after change"
file_content=$(cat "$file_name")
echo "$file_content"

