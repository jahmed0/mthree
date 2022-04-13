#!/bin/sh

#write a script that for every file in that directory you rename it to have an extension of today's date in YYYYMMDD format.

currentdate=$(date +"%Y%m%d")
for FILE in *;
	do
		if [[ $FILE  != *.sh ]]
		then
		mv $FILE "$FILE.$currentdate"
		fi;
	done;
ls -ltr
exit 0
