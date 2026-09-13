#!/bin/bash
read -p "enter a number: " n
if [ $n -le 1 ]; then
	echo "$n is not a prime number"
	exit 0
fi

is_prime=1
for ((i=2; i*i<=n; i++))
do
	if [ $((n % i)) -eq 0 ]; then
		is_prime=0
		break
	fi
done

if [ $is_prime -eq 1 ]; then
	echo "$n is a prime number"
else
	echo "$n is not a prime number"
fi
