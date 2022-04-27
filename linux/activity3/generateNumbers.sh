#!/bin/sh

#Create a script that picks 5numbers between 1-50  for each draw plus a bonus ball number between 1 and 10. Output the numbers to a file that has the date in its name.

currentdate=$(date +"%Y%m%d")
(shuf -i 1-50 -n5) > "lotteryNumbers.$currentdate" && (echo $((1 + RANDOM %10)))>> "lotteryNumbers.$currentdate" 

