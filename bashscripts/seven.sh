#! /usr/bin/bash

read -p "enter a route to a directory: " directory

find $directory -type f | wc -l
