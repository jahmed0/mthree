#!/bin/sh

#Create another script that will allow users to check their lottery numbers and advise them if they match or not and how many matches they got

rm userNumbers.log
touch userNumbers.log
matches=0;

#User enters numbers
echo "Check your lottery numbers here.";
while ! [ "$(wc -l userNumbers.log | awk '{ print $1 }')" == 5 ]
do
	#echo "line no : " "$(wc -l userNumbers.log | awk '{print $1}')"
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
			
	fi
done
read -p "Please enter a bonus lottery number between 1-10: " bonus;
until [[ "$bonus" =~ ^[0-9]+$ ]] && [ "$bonus" -ge 1 ] && [ "$bonus" -le 10 ]
do
	echo "Please enter a valid number.";
        read -p "Please enter a lottery number between 1-10: " bonus;
done
        echo $bonus >> userNumbers.log
echo "Here are the numbers that you have selected: ";
cat userNumbers.log

#Checking numbers
file="lotteryNumbers."$(date +"%Y%m%d");
while IFS= read -r line 
do
	if grep -w $line $file
	then
		echo "Matching lottery number found: " $line;
		((matches++));
	fi
done < userNumbers.log
if [ $matches == 6 ]
then
	echo "Congratualtions you won! You have guessed all the numbers correctly.";
else
	echo "Unfortunately, you did not win. You have guessed "$matches"/6 numbers";
fi
