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

# Find the 2nd largest and 2nd smallest elements without sorting the array
largest=${nums[0]}
second_largest=${nums[0]}
smallest=${nums[0]}
second_smallest=${nums[0]}

for (( i=1; i<10; i++ )); do
    if [ ${nums[i]} -gt $largest ]; then
        second_largest=$largest
        largest=${nums[i]}
    elif [ ${nums[i]} -gt $second_largest ] && [ ${nums[i]} -ne $largest ]; then
        second_largest=${nums[i]}
    fi
    
    if [ ${nums[i]} -lt $smallest ]; then
        second_smallest=$smallest
        smallest=${nums[i]}
    elif [ ${nums[i]} -lt $second_smallest ] && [ ${nums[i]} -ne $smallest ]; then
        second_smallest=${nums[i]}
    fi
done

# Print the 2nd largest and 2nd smallest elements
echo "The 2nd largest element is: $second_largest"
echo "The 2nd smallest element is: $second_smallest
