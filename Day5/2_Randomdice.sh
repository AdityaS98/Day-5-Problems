#!bin/bash

# Generate random number

	number=$RANDOM

#To get the count on dice
	dice=$((number % 6))

	echo "The count on dice is:" $dice


