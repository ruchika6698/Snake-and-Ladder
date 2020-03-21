#!/bin/bash -x

echo "--------------Welcome to Snake Ladder--------------"

START_POSITION=0
NOPLAY=1
SNAKE=3
LADDER=2

Number=$(( RANDOM%6 + 1 ))
echo $Number

Random=$(( RANDOM%3 + 1 ))
CurrentPosition=$START_POSITION
if [[ $Random -eq 1 ]]
then
	CurrentPosition=$START_POSITION
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


