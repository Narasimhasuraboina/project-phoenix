#!/bin/bash

age=$1

if [ $1 -gt 18 ]; then
	echo "yeah youre eligible for this"
else
	echo "youre age is lessthan : $age , so youre not eliglbe"
fi	
