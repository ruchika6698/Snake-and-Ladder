#!/bin/bash -x

echo "--------------Welcome to Snake Ladder--------------"

START_POSITION=0
NOPLAY=1
WINNINGPOSITION=100
SNAKE=3
LADDER=2
Position=0

Number=$(( RANDOM%6 + 1 ))
echo $Number

CurrentPosition=$START_POSITION

while [[ CurrentPosition -le $WINNINGPOSITION ]]
do
	Random=$(( RANDOM%3 + 1 ))
	if [[ $Random -eq 1 ]]
	then
		CurrentPosition=$CurrentPosition
	elif [[ $Random -eq 2 ]]
	then
		CurrentPosition=$(( $CurrentPosition+$Number ))
	elif [[ $Random -eq 3 ]]
	then
		CurrentPosition=$(( $CurrentPosition-$Number ))
	else
	echo "wrong input"
	fi
done
echo "Player has reached the winning goal: " $CurrentPosition
