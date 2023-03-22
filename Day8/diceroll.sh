#!/bin/bash

# Initialize the dictionary
declare -A results=()

# Roll the die until one of the numbers reaches 10 times
while true; do
    # Roll the die and store the result in the dictionary
    result=$(( RANDOM % 6 + 1 ))
    (( results[$result]++ ))

    # Check if any number has reached 10 times
    for key in "${!results[@]}"; do
        if [[ "${results[$key]}" -eq 10 ]]; then
            echo "Number $key reached 10 times"
            break 2
        fi
    done
done

# Find the number that reached maximum times and the one that was for minimum times
max_key=$(printf '%s\n' "${!results[@]}" | awk '{print $1}' | sort -rn | head -1)
min_key=$(printf '%s\n' "${!results[@]}" | awk '{print $1}' | sort -n | head -1)

echo "Number $max_key reached the maximum times of ${results[$max_key]}"
echo "Number $min_key reached the minimum times of ${results[$min_key]}"
