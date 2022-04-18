#!/bin/sh

#Write a script that takes two files of unique numbers and displays the difference between the two lists (without using grep)

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


echo "Only in file 1: "
grep -Fxvf $file2 $file1
echo "Only in file 2: "
grep -Fxvf $file1 $file2
