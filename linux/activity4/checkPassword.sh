#!/bin/sh

#Write a script to validate how secure someone's password is.
read -r -p "Enter your password: " userPass
if ! [[ ${#userPass} -ge 8 ]]
then
	echo "Invalid password. Your password must contain more than 8 characters."

elif ! [[ $userPass =~ [0-9] ]]
then
	echo "Invalid password. Your password must contain a number."
elif [[ $userPass =~ [a-z] ]] && [[ $userPass =~ [A-Z] ]]
then
	echo "Congratulations! Your password is secure."
else
	echo "Invalid password. Your password must contain both uppercase and lowercase  letters."
fi
