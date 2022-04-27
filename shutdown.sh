#!/bin/bash
WHAT=$'\n\n		< Welcome to easyShutdown >\n\n'
OPTIONS=$'1. shutdown now\n2. restart now\n3. shutdown later\n'
SMH=$'\n1. Insert Time in Seconds\n2. Insert Time in Minutes\n3. Insert Time in Hours\n'
WHEN=$'\nInsert Time:\n'
echo "$WHAT"
echo "$OPTIONS"

read option

if [[ $option -eq 1 ]]; 
then
	shutdown -s -t 0
elif [[ $option -eq 2 ]];
then
	shutdown -r -t 0
elif [[ $option -eq 3 ]];
then 
	echo "$SMH"
	read scmnhr
	echo "$WHEN"
	read whoop
	if [[ $scmnhr -eq 1 ]];
	then 
		$RED echo "you selected to shut down your computer in $whoop-s"
		shutdown -s -t $whoop 
	elif [[ $scmnhr -eq 2 ]]; 
	then 
		$RED echo "you selected to shut down your computer in $whoop-m"
		shutdown -s -t $(($whoop*60))
	elif [[ $scmnhr -eq 3 ]]; 
	then 
		$RED echo "you selected to shut down your computer in $whoop-h"
		shutdown -s -t $(($whoop*60*60))
	else 
		echo "insert correct number!"
	fi
else
	echo "incorrect option!"
fi
