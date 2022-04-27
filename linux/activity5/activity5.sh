#!/bin/sh

#Write a script that takes a number as an input and reverses it out to the user. For example, if the original number is 74985, the output should be 58947.

read -r -p "Enter your number: " input
re='^[0-9]+$'
if [[ $input =~ $re ]]; then
	echo $input | rev
else
	echo "Please enter a valid number."
fi
