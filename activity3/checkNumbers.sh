#!/bin/sh

rm userNumbers.log
touch userNumbers.log

while true
do
	read input
	echo $input >> usernumbers.log
	if [ `wc -l usernumbers/log` -gt 4 ]
		read bonus
		echo $bonus >> usernumbers.log


