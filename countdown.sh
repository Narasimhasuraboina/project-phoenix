#!/bin/bash
read -p "enter a value :" a
for ((a;a>=1;a--))
do 
	echo "$a"
	if [ $a -eq 1 ]; then
		echo "Blast off🚀🚀"
fi
done
