#! /usr/bin/bash

read -p "enter a username: " user

processesNum=`ps -u $user | wc -l`

echo "the number of processes the user $user is running is $((processesNum-1))"
