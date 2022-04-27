#!/bin/sh

#Create a script that takes two number parameters a and b and then shows True if a is larger than b or False otherwise.

re='^[0-9]+$'
read -r -p "Enter parameter (a) as a number: " varA
read -r -p "Enter parameter (b) as a number: " varB
if ! [[ $varA =~ $re ]] || ! [[ $varB =~ $re  ]] ; then
	echo "Invalid Input. Please enter (a) as a number."
elif [[ $varA -gt $varB ]];
then
	echo "True"
else
	echo "False"
fi

