#!/bin/sh

#Write a script that uses this file to perform the following tasks: Read in the file Sort the numbers into reverse order and output them to the screen Each number should output exactly once. Duplicate numbers should not appear in the output.

grep -Eo '[0-9]+' testfile.txt | sort -rn | uniq
