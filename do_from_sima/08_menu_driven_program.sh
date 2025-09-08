#!/bin/bash

echo " type (a) for addition (s) subtraction (m) for multiplication (d) division "
read choice

case "$choice" in
	a)
		echo "enter two number"
		read num1
		read num2
		num3=`expr $num1 + $num2`
		echo $num3
		;;
	s)
		echo "enter two number"
                read num1
                read num2
                num3=`expr $num1 - $num2`
                echo $num3
                ;;
	m)
		echo "enter two number"
                read num1
                read num2
                num3=`expr $num1 \* $num2`
                echo $num3
                ;;

	d)
		echo "enter two number"
                read num1
                read num2
                num3=`expr $num1 / $num2`
                echo $num3
                ;;
	*) 
		echo ":)"
esac

