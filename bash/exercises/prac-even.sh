#!/bin/bash
a=$1

if [ $((a%2)) -eq 0 ]; then
echo "it's a even number"
else
	echo "this a odd number"
fi
