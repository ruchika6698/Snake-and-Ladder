#!/bin/bash -x

echo "--------------Welcome to Snake Ladder--------------"

START_POSITION=0
NOPLAY=1
WINNINGPOSITION=100
SNAKE=3
LADDER=2

Number=$(( RANDOM%6 + 1 ))
echo $Number

while [[ position -le 100 ]]
do
	Random=$(( RANDOM%3 + 1 ))
	currentposition=$START_POSITION
	if [[ $Random -eq 1 ]]
	then
		CurrentPosition=$currentposition
	elif [[ $Random -eq 2 ]]
	then
		CurrentPosition=$(( $currentposition+$Number ))
	elif [[ $Random -eq 3 ]]
	then
		CurrentPosition=$(( $currentposition-$Number ))
	else
	echo "wrong input"
	fi
done
echo $CurrentPosition

