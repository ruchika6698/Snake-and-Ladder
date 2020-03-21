#!/bin/bash -x

echo "--------------Welcome to Snake Ladder--------------"

START_POSITION=0
NOPLAY=1
WINNINGPOSITION=100
SNAKE=3
LADDER=2
count=0
chance=0

Number=$(( RANDOM%6 + 1 ))
echo $Number

CurrentPosition1=$START_POSITION
CurrentPosition2=$START_POSITION

while [[ CurrentPosition1 -le $WINNINGPOSITION && CurrentPosition2 -le $WINNINGPOSITION ]]
do
	(( count++ ))
	Random=$(( RANDOM%3 + 1 ))

	if [[ chance -eq 0 ]]
	then
		if [[ $Random -eq 1 ]]
		then
			CurrentPosition1=$CurrentPosition1
		elif [[ $Random -eq 2 ]]
		then
			CurrentPosition1=$(( $CurrentPosition1+$Number ))
		elif [[ $Random -eq 3 ]]
		then
			CurrentPosition1=$(( $CurrentPosition1-$Number ))
		fi
	elif [[ chance -eq 1 ]]
	then
		if [[ $Random -eq 1 ]]
		then
			CurrentPosition2=$CurrentPosition2
		elif [[ $Random -eq 2 ]]
		then
			CurrentPosition2=$(( $CurrentPosition2+$Number ))
		elif [[ $Random -eq 3 ]]
		then
			CurrentPosition2=$(( $CurrentPosition2-$Number ))
		fi
	fi
done

echo "Player has reached the winning goal: " $CurrentPosition1
echo "Player has reached the winning goal: " $CurrentPosition2
echo "Number of times the dice was played: " $count

if [[ $CurrentPosition1 -eq 100 ]]
then
	echo "Player 1 has won the game"
elif [[ $CurrentPosition2 -eq 100 ]]
then
	echo "Player 2 has won the game"
else
	echo "Its a tie"
fi
