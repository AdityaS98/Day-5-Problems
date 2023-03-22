#!/bin/bash

# Define an array to store the random numbers
declare -a nums

# Generate 10 random 3-digit numbers and store them in the array
for (( i=0; i<10; i++ )); do
    num=$((RANDOM % 900 + 100))
    nums[$i]=$num
done

# Print the array of random numbers
echo "Array of random numbers:"
echo "${nums[@]}"

# Sort the array
sorted_nums=($(echo "${nums[@]}" | tr ' ' '\n' | sort -n | tr '\n' ' '))

# Print the sorted array
echo "Sorted array:"
echo "${sorted_nums[@]}"

# Find the 2nd largest and 2nd smallest elements
second_largest=${sorted_nums[-2]}
second_smallest=${sorted_nums[1]}

# Print the 2nd largest and 2nd smallest elements
echo "The 2nd largest element is: $second_largest"
echo "The 2nd smallest element is: $second_smallest"
