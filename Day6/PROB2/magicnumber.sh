#!/bin/bash

# Ask the user to think of a number between 1 and 100
echo "Think of a number between 1 and 100"

# Initialize the lower and upper bounds of the search range
lower=1
upper=100

# Start the game loop
while true; do
    # Compute the middle point between the lower and upper bounds
    mid=$(( (lower + upper) / 2 ))

    # Ask the user if their number is less than, equal to, or greater than the middle point
    read -p "Is your number less than, equal to, or greater than $mid? " answer

    # Update the lower or upper bound based on the user's response
    case $answer in
        less)
            upper=$(( mid - 1 ))
            ;;
        equal)
            echo "Got it! Your number is $mid"
            exit 0
            ;;
        greater)
            lower=$(( mid + 1 ))
            ;;
        *)
            echo "Invalid answer. Please enter 'less', 'equal', or 'greater'."
            ;;
    esac
done
Here's how the script works:
