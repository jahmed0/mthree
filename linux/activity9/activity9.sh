#1/bin/sh

#Write a script that takes a file name as a parameter. If the file exists, print an error and return a code. If the file does not exist, create the file.

echo "Generate a new file!"
read -p "Please enter the name of the file: " file

if [ -f "$file" ]; then
    echo "Error: $file already exists."
    exit 1
else
    echo "$file does not currently  exist. A new empty file will be created in this directory."
    read -p "Confirm file generation (y/n): "
    if [[ ${REPLY,,} == "y" ]]
    then
	    touch $file
	    echo "$file was created. "
	    exit 0

    else
	    echo "File was not created."
	    exit 2
    fi
fi
