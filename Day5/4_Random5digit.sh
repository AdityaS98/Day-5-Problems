#!/bin/bash

#First Number
	d1=$((RANDOM % 100))
	echo "First Number is:"$d1
#Second Number
	d2=$((RANDOM % 100))
	 echo "First Number is:"$d2
#Third Number
	d3=$((RANDOM % 100))
	 echo "First Number is:"$d3
#Fourth Number
	d4=$((RANDOM % 100))
	 echo "First Number is:"$d4
#Fifth Number
	d5=$((RANDOM % 100))
	 echo "First Number is:"$d5
#Sum of the values
	Sum=$(($d1+$d2+$d3+$d4+$d5))
	echo "Result:"$Sum
#Average of the values
	Avg=$(($Sum/2))
	echo "Average is:"$Avg



