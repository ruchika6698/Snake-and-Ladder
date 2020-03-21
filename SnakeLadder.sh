#!/bin/bash -x

echo "--------------Welcome to Snake Ladder Game--------------"

START_POSITION=0


function Die(){
	Number=$(( 1+(RANDOM%6) ))
}
