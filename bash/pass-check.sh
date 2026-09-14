#!/bin/bash

pass="linux123"

read -p "please enter your password : " entered

if [ "$entered" = "$pass" ]; then
    echo "access granted"
else
    echo "access denied"
fi
