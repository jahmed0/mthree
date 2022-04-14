#!/bin/sh

#Create a 10-question true or false quiz game in your script.

echo "Welcome to my quiz. Please enter true or false. ";
score=0
while IFS= read -r -u9  line
do
       question=` echo $line | awk -F';' '{print$1}'`;
       answer=`echo $line | awk -F';' '{print$2}'`;
       echo $question;
       read -p "Your answer: " userInput;
       until [[ ${userInput,,} =~ (true|false) ]]
       do
	       echo "Please enter a valid answer. ";
	       read -p "Your answer: " userInput;
       done
       if [[ ${userInput,,} == ${answer,,} ]]
       then
	       echo "Correct!";
	       ((score++));
       else echo "Incorrect. ";
       fi
done 9< questions.txt
echo "You scored " $score "/10. well done. " ;
