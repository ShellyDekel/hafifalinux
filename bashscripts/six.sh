#! /usr/bin/bash

function isEvenOrOdd() {
	if [ $(($1 % 2)) == 0 ]
	then
		echo "even"
	else
		echo "odd"
	fi
}

seconds=$(date +%S)

isEvenOrOdd $seconds
