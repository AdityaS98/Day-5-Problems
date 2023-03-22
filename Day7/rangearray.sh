#!/bin/bash

# Initialize the array
digits=()

# Loop over the range from 0 to 100
for (( i=0; i<=100; i++ )); do
    # Convert the number to a string
    str=$(echo "$i" | tr -d '\n')

    # Check if the string contains a repeated digit
    if [[ $str =~ ([0-9])\1 ]]; then
        digits+=("$i")
    fi
done

# Print the array of digits with repeated digits
echo "Digits with repeated digits: ${digits[@]}"
