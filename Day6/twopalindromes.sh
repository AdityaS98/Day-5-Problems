#!/bin/bash

# Define function to check if two numbers are palindromes
function is_palindrome 
{
    # Convert the numbers to strings
    num1=$(echo "$1" | tr -d '\n')
    num2=$(echo "$2" | tr -d '\n')
    
    # Reverse the second number
    rev_num2=$(echo "$num2" | rev)

    # Compare the two numbers
    if [ "$num1" = "$rev_num2" ]; then
        echo "$num1 and $num2 are palindromes."
    else
        echo "$num1 and $num2 are not palindromes."
    fi
}
