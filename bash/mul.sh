#!/bin/bash
read -p "enter a number :" a
i=1
for((i;i<=10;i++))
do
	echo " $a x $i = $(($a*$i)) "
done
