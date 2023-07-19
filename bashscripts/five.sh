#! /usr/bin/bash

read -p "name a directory: " directory
read -p "enter the number of bytes: " bytesLimit

for file in $(find "$directory" -size +"$bytesLimit")
do
	if [ "$file" != "$directory" ]
	then
		if [ -d $file ]
		then
			rm -r $file/
		else
			rm $file
		fi
	fi
done
