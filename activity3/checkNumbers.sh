#!/bin/sh

#Create another script that will allow users to check their lottery numbers and advise them if they match or not and how many matches they got

rm userNumbers.log
touch userNumbers.log


echo "Check your lottery numbers here.";
matches=0;
while true
do
	lineNumber=`wc -l userNumbers.log`;
	echo $lineNumber
	if [ -z "$lineNo" ]
	then
		lineNumber=0;
		echo $lineNumber
	fi
	if [ "$lineNumber" -le 4 ]
	then
		read -p "Please enter a lottery number between 1-50: " input;
		until [[ "$input" =~ ^[0-9]+$ ]] && [ "$input" -ge 1 ] && [ "$input" -le 50 ] 
		do
			echo "Please enter a valid number.";
			read -p "Please enter a lottery number between 1-50: " input;
		done
	
		if grep -Fxq "$input" userNumbers.log
		then
			echo "You cannot eneter the same number more than once: "
                	read -p "Please enter a lottery number between 1-50: " input;
		else
			echo $input >> userNumbers.log
			cat userNumbers.log
		fi
	else
		read -p "Please enter a bonus lottery number between 1-10: " bonus;
		until [[ "$bonus" =~ ^[0-9]+$ ]] && [ "$bonus" -ge 1 ] && [ "$bonus" -le 10 ]
               do
                        echo "Please enter a valid number.";
                        read -p "Please enter a lottery number between 1-10: " bonus;
                done
		echo $input >> userNumbers.log
		break
	fi
done

