#!/bin/sh

#Create a second version of the script that then tells the user the difference between the two numbers.

re='^[0-9]+$'
read -r -p "Enter parameter (a) as a number: " varA
read -r -p "Enter parameter (b) as a number: " varB
if ! [[ $varA =~ $re ]] || ! [[ $varB =~ $re  ]] ; then
        echo "Invalid Input. Please enter (a) as a number."
elif [[ $varA -gt $varB ]];
then
        echo "True"
	difference=`expr $varA - $varB`
	echo "The diffence between (a) and (b) is: " $difference
else
        echo "False"
	difference=`expr $varA - $varB`
        echo "The diffence between (a) and (b) is: " $difference
fi

