#!/bin/bash
read -p "enter a value:" a

read -p "enter b value :" b
if [ "$a" -gt "$b" ]; then
	echo "$a is grater than b=$b"
else 
	echo "b=$b is greater than a=$a"
fi
