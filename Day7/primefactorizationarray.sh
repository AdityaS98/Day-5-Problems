#!/bin/bash

# Function to check if a number is prime
function is_prime {
    if (( $1 <= 1 )); then
        return 1
    fi

    for (( i=2; i<$1; i++ )); do
        if (( $1 % $i == 0 )); then
            return 1
        fi
    done

    return 0
}

# Function to find the prime factors of a number
function prime_factors {
    n=$1
    factors=()

    for (( i=2; i<=$n; i++ )); do
        if is_prime $i; then
            while (( $n % $i == 0 )); do
                factors+=($i)
                n=$(( $n / $i ))
            done
        fi
    done

    echo "${factors[@]}"
}

# Get the number from the user
echo "Enter a number:"
read n

# Find the prime factors of the number and store them in an array
factors=($(prime_factors $n))

# Print the prime factors
echo "The prime factors of $n are:"
echo "${factors[@]}"
