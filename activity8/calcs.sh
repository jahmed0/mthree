#!/bin/sh

rm numbers.log
touch numbers.log

#Enter 5-10 numbers
echo "Please enter 5 integers"
while ! [ "$(wc -l numbers.log | awk '{print $1}')" == 5 ]
do
        read -p "Please enter a integer: " input;
        until [[ "$input" =~ ^[0-9]+$ ]]
        do
                echo "Please enter a valid number.";
                read -p "Please enter a integer: " input;
        done
	echo $input >> numbers.log
done
echo "Please enter up to 5 more additional numbers"
while [ "$(wc -l numbers.log | awk '{print $1}')" -lt 10 ]
do
	read -p "Would you like to enter another number? (y/n): ";
	until [[ ${REPLY,,} == "y" ]] || [[ ${REPLY,,} == "n" ]] 
	do
		echo "Please enter a valid input."
		read -p "Would you like to enter another number? (y/n): ";
	done
	if [[ ${REPLY,,} == "y" ]]
	then
		read -p "Please enter a integer: " input;
		until [[ "$input" =~ ^[0-9]+$ ]]
		do
			echo "Please enter a valid number.";
                	read -p "Please enter a integer: " input;
        	done
		echo $input >> numbers.log
	else
		break
	fi
done

#calculations
product=1
sum=0
while IFS= read -r i
do
	let sum+=$i
	let product=$((product * i))
done < numbers.log
echo "You have entered the following numbers: "
cat numbers.log
echo "The product of the integers: " $product
average=$((sum/ $(wc -l numbers.log | awk '{print $1}') ));
echo "The average of the integers: " $average
echo "The sum of the integers: " $sum
echo "The min of the integers: "  $(sort -n numbers.log | head -1)
echo "The max of the integers: "  $(sort -n numbers.log | tail -1)

