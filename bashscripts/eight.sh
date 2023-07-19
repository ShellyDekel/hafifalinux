#! /usr/bin/bash

read -p "enter your name: " name
read -p "enter your birthdate (DDMM): " birthdate

currentDate=$(date +%d%m)

birthdate=$((10#$birthdate))
currentDate=$((10#$currentDate))

if [[ $((birthdate%100)) -lt $((currentDate%100)) ]] || ([[ $((birthdate%100)) -eq $((currentDate%100)) ]] && [[ $((birthdate)) -lt $((currentDate)) ]])
then
	echo "$name's birthday has passed"
elif [[ $((birthdate%100)) -gt $((currentDate%100)) ]] || ([[ $((birthdate%100)) -eq $((currentDate%100)) ]] && [[ $((birthdate)) -gt $((currentDate)) ]])
then
	echo "$name's birthdate hasn't passed yet"
else
	echo "$name's birthday is today!"
fi
	
