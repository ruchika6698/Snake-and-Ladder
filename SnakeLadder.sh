#!/bin/bash -x

echo "--------------Welcome to Snake Ladder--------------"

START_POSITION=0
NOMOVE=0
LADDER=2
SNAKE=1
WINNINGPOSITION=100
count=0
die=0
count1=0

declare -a Position1
declare -a Position2

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
		echo "$2"
	fi

	if [ $a -eq $SNAKE ]
	then
		echo $(( $2-$1 ))
	fi

	if [ $a -eq $LADDER ]
	then
		echo $(( $2+$1 ))
	fi
}

function position(){
	Position1=$( nextmove $( Die $Number ) $CurrentPosition )
	(( die++ ))
   if [[ $Position -gt $WINNINGPOSITION ]]
   then
      CurrentPosition=$CurrentPosition
   else
      CurrentPosition=$Position
   fi

   if [[ $CurrentPosition -lt $START_POSITION ]]
   then
      CurrentPosition=$START_POSITION
   fi
	echo "$CurrentPossition"
}

CurrentPosition1=$START_POSITION
CurrentPosition2=$START_POSITION

while true
do
	PlayerPosition1[count]=$CureentPosition
   (( count++ ))
	PlayerPosition2[count1]=$CureentPosition
	(( count1++ ))

	if [[ $CurrentPostion1 -eq $WINNINGPOSITION ]]
	then
		echo "Winner Player 1"
		break
	fi
	if [[ $CurrentPostion2 -eq $WINNINGPOSITION ]]
   then
      echo "Winner Player 2"
      break
   fi
done
