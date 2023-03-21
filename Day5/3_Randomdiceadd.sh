#!/bin/bash

#Count on the first Dice
	dice1=$((1+ RANDOM % 6 ))
	echo "Count on the first dice is:" $dice1
#Count on second Dice
	dice2=$((1+ RANDOM % 6))
	echo "Count on second dice is:" $dice2
#Sum of both the values is 
	Total=$(( $dice1 + $dice2 ))
	echo "There sum is:" $Total

