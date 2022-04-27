#!/bin/bash
WHAT=$'Welcome to shutdown\n\n'
OPTIONS=$'1. shutdown now\n2. restart now\n3. shutdown later\n4. restart later\n'
SMH=$'\n1. Insert Time in Seconds\n2. Insert Time in Minutes\n3. Insert Time in Hours\n'
WHEN=$'Insert Time:\n[number]  '
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
	read option
	if [[ $option -eq 1 ]];
	then 
		echo "1"
	elif [[ $option -eq 2 ]]; 
	then 
		echo "2"
	elif [[ $option -eq 3 ]]; 
	then 
		echo "3"
	else 
		echo "insert correct number!"
	fi

elif [[ $option -eq 4 ]]; 
then
	echo "$SMH"
        read option
        if [[ $option -eq 1 ]];
        then
                echo "$WHEN "
		read time
		shutdown -r -t
        elif [[ $option -eq 2 ]];
        then
                echo "2"
        elif [[ $option -eq 3 ]];
        then
                echo "3"
        else
                echo "insert correct number!"
        fi
else
	echo "incorrect option!"
fi
