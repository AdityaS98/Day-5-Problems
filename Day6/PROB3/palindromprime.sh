#!/bin/bash

# Define function to check if a number is prime
function is_prime {
    # Check if the number is less than 2
    if [ "$1" -lt 2 ]; then
        return 1
    fi
    
    # Check if the number is divisible by any integer from 2 to its square root
    for (( i=2; i*i<=$1; i++ )); do
        if [ $(($1 % i)) -eq 0 ]; then
            return 1
        fi
    done
    
    # If the number is not divisible by any integer from 2 to its square root, it is prime
    return 0
}

# Define function to get the palindrome of a number
function get_palindrome {
    # Convert the number to a string and reverse it
    pal=$(echo "$1" | rev)
    echo "$pal"
}

# Prompt user for input
read -p "Enter a number: " num

# Check if the number is prime
if is_prime "$num"; then
    echo "$num is prime."
    
    # Get the palindrome of the number
    pal=$(get_palindrome "$num")
    echo "The palindrome of $num is $pal."
    
    # Check if the palindrome is prime
    if is_prime "$pal"; then
        echo "$pal is also prime."
    else
        echo "$pal is not prime."
    fi
else
    echo "$num is not prime."
fi
