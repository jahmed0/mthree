#!/bin/sh

#Create a simple shell script to tell the user about their session 
currentdate=$(date +"%D")
currenttime=$(date +"%T")
currentdirectory="$(pwd)"
filenumber=$(ls /etc | wc -l)
largestfile=$(du -a | sort -n -r | head -n 10)
echo "Username: " $USER
echo "Current date: " $currentdate
echo "Current time: " $currenttime
echo "Current working directory: " $currentdirectory
echo "Current number of files in this directory: " $filenumber
echo "Largest  file in this directory: " $largestfile
exit 0
