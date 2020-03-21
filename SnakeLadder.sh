#!/bin/bash -x

echo "--------------Welcome to Snake Ladder Game--------------"

START_POSITION=0
NOMOVE=0
LADDER=2
SNAKE=1

function Die()
{
	Number=$(( 1+(RANDOM%6) ))
	echo "$Number"
}


function nextmove()
{
	a=$((RANDOM%3))

	if [ $a -eq $NOMOVE ]
	then
		echo "$CurrentPosition"
	fi

	if [ $a -eq $SNAKE ]
	then
		echo "$(( $CurrentPosition - $1 ))"
	fi

	if [ $a -eq $LADDER ]
	then
		echo "$(( $CurrentPostion + $1 ))"
	fi
}

CurrentPosition=$START_POSITION
CurrentPOsition=$( nextmove $( Die ) )
