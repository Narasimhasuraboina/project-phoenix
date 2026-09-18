#!/bin/bash
# Check if a given number is even or odd

read -p "enter a number: " n

if ! [[ "$n" =~ ^-?[0-9]+$ ]]; then
    echo "Error: Please enter a valid integer"
    exit 1
fi

if [ $((n % 2)) -eq 0 ]; then
    echo "$n is even"
else
    echo "$n is odd"
fi
