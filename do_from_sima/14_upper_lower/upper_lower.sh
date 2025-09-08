#!/bin/bash

fileName=$1
option=$2

if [ ! -f "$fileName" ]
then
	echo "'$fileName' not found "
	exit 1
fi

case $option in
	-u) 
		tr '[:lower:]' '[:upper:]' < "$fileName" > "$fileName"
		;;
	-l)
		tr '[:upper:]' '[:lower:]' < "$fileName" > "$fileName"
		;;
	*)
		echo "chose -u ot -l"
		;;
esac
