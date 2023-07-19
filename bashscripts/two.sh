#! /usr/bin/bash

read -p "enter a mount name: " mount

df -H $mount --output=source,size

