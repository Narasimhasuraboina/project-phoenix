#!/bin/bash
echo "for loop"
a=$1
b=$2
c=$3
count=1
for arg in "$@"; do
echo "given values are $count:$arg"
count=$((count+1))
done
read -p "enter 2 values pal:" i k
d=$((i+k))
echo "$d"
