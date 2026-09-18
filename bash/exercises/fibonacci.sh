#!/bin/bash
# Generate the Fibonacci sequence up to N terms

read -p "enter number of terms: " n

if ! [[ "$n" =~ ^[0-9]+$ ]] || [ "$n" -le 0 ]; then
    echo "Error: Please enter a positive integer greater than 0"
    exit 1
fi

a=0
b=1

echo "Fibonacci sequence ($n terms):"
for ((i=0; i<n; i++))
do
    echo -n "$a "
    fn=$((a + b))
    a=$b
    b=$fn
done
echo ""
