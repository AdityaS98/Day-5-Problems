#!/bin/bash

# Initialize an array of months
months=(Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec)

# Initialize an array to store the birthdays
declare -A birthdays=()

# Generate the birth month of 50 individuals between the years 92 and 93
for ((i=1; i<=50; i++)); do
    year=$(( RANDOM % 2 + 92 ))
    month=$(( RANDOM % 12 ))
    birthday="${months[$month]}-$year"
    (( birthdays[$birthday]++ ))
done

# Find all the individuals having birthdays in the same month
for key in "${!birthdays[@]}"; do
    if [[ "${birthdays[$key]}" -gt 1 ]]; then
        echo "Birthdays in $key: ${birthdays[$key]}"
    fi
done
