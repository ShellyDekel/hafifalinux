#! /usr/bin/bash

amount=5

rm -r five

mkdir five

for (( folder=1; folder<=$amount; folder++))
do
	mkdir five/folder$folder
	for (( file=1; file<=$amount; file++))
	do
		touch five/folder$folder/file$file
		for (( line=1; line<=$file; line++))
		do
			echo $file >> five/folder$folder/file$file
		done
	done
done
