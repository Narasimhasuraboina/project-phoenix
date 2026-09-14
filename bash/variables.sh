#! /bin/bash

PRICE_PER_APPLE=5
MyFirstLetter=ABC
greeting='Hello  world!'
echo "price of apple is: $PRICE_PER_APPLE"
echo "my first letters are : $MyFirstLetter"
echo "greeting : $greeting"
# Escaping special characters
echo "The price of an Apple today is: \$HK $PRICE_PER_APPLE"
# Avoiding ambiguity
echo "The first 10 letters in the alphabet are: ${MyFirstLetters}DEFGHIJ"
# Preserving whitespace
echo $greeting
echo "$greeting"
# Command substitution
CURRENT_DATE=$(date +"%Y-%m-%d")
echo "Today's date is: $CURRENT_DATE"

FILES_IN_DIR=$(ls)
echo "Files in the current directory:"
echo "$FILES_IN_DIR"

UPTIME=$(uptime -p)
echo "System uptime: $UPTIME"
