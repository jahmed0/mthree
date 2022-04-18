#!/bin/sh

#Write a script that checks if two files have at least one common element or not. Display an appropriate message for both scenarios. The file names should be specified as parameters

read -p "Please enter the name of the first file: " file1
until [ -f "$file1" ]
do
	echo "Invalid input. File does not exit."
	read -p "Please enter the name of the first file: " file1
done

read -p "Please enter the name of the second file: " file2
until [ -f "$file2" ]
do
        echo "Invalid input. File does not exit."
        read -p "Please enter the name of the second file: " file2
done

matches=`fgrep -f $file1 $file2 | wc -l`
echo $matches
if ! [ $matches == 0 ]
then
	echo "These files have at leaset one common element."
	echo "Number of matches:  " $matches
	echo "The files have the following matches:"
	fgrep -f $file1 $file2
else
	echo "The files have no common elements."
fi
