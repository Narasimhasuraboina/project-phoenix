#! /bin/bash
echo "conditional statements"
a=10
if [ "$a" -eq 0 ]; then
echo "it is a zero"
elif [ "$a" -lt 0 ]; then
echo "it is a negative number"
else
echo "it is a positive number"
fi
