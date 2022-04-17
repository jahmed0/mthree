#!/bin/sh

#Write a script that writes random numbers to a file (one number per line).
#The first parameter should be the file name.
#The second parameter is the number of lines to write.
#If the specified file already exists, display a relevant message and return a code.

echo "Generate a new file with random numbers."
read -p "Enter the name of the file: " filename
if [ -f "$filename" ]; then
    echo "The file '$filename' already exists."
    exit 1
else
	read -p "Enter the number of lines to write: " lineNo
	read -p "$lineNo random numbers will be saved to '$filename'. Do you want to proceed? (y/n): "
	if [[ ${REPLY,,} == "y" ]]
	then
		(shuf -i 1-50 -n$lineNo) > $filename
		echo "The file '$filename' has been saved. "
		exit 0
	else
		echo "Cancelled."
		exit 2
	fi
fi
