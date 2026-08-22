#!/bin/bash 

Numbers=()
Strings=()
Names=()

#entering some details in the arrays.
Numbers+=(1)
Numbers+=(2)
Numbers+=(3)

Strings=("hello")
Strings+=("world")

Names+=("Narasimha")
Names+=("Navadeep")
Names+=("avinash")
echo "number of numbers are ${#Numbers[@]}"
echo "${Numbers[@]}"
echo "${Strings[@]}"
echo "${Names[@]}"
