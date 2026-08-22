#!/bin/bash
count=1
for temp in "$@"; do
	echo "$count : $temp "
	count=$((count+1))
done
