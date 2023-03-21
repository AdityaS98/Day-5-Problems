#!/bin/bash

# Initialize the counters for heads and tails
heads=0
tails=0

# Loop until one of the counters reaches 11
while [[ $heads -lt 11 && $tails -lt 11 ]]; do
    # Flip a coin by generating a random number between 0 and 1
    flip=$(( RANDOM % 2 ))

    # Update the counters based on the result of the coin flip
    if [[ $flip -eq 0 ]]; then
        (( heads++ ))
        echo "Heads"
    else
        (( tails++ ))
        echo "Tails"
    fi
done

# Print the winner
if [[ $heads -eq 11 ]]; then
    echo "Heads wins!"
else
    echo "Tails wins!"
fi
