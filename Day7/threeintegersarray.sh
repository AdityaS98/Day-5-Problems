#!/bin/bash

# Function to find all unique triplets that add up to zero
function find_triplets {
    arr=("$@")
    n=${#arr[@]}

    # Sort the array
    sorted=($(printf '%s\n' "${arr[@]}" | sort -n))

    # Find all unique triplets that add up to zero
    triplets=()
    for (( i=0; i<$n-2; i++ )); do
        if (( $i == 0 || ${sorted[$i]} != ${sorted[$i-1]} )); then
            j=$(( $i + 1 ))
            k=$(( $n - 1 ))
            while (( $j < $k )); do
                sum=$(( ${sorted[$i]} + ${sorted[$j]} + ${sorted[$k]} ))
                if (( $sum == 0 )); then
                    triplets+=(${sorted[$i]} ${sorted[$j]} ${sorted[$k]})
                    j=$(( $j + 1 ))
                    k=$(( $k - 1 ))
                    while (( $j < $k && ${sorted[$j]} == ${sorted[$j-1]} )); do
                        j=$(( $j + 1 ))
                    done
                    while (( $j < $k && ${sorted[$k]} == ${sorted[$k+1]} )); do
                        k=$(( $k - 1 ))
                    done
                elif (( $sum < 0 )); then
                    j=$(( $j + 1 ))
                else
                    k=$(( $k - 1 ))
                fi
            done
        fi
    done

    echo "${triplets[@]}"
}

# Get input from the user
echo "Enter integers separated by spaces:"
read -a arr

# Find all unique triplets that add up to zero and print them
triplets=($(find_triplets "${arr[@]}"))
echo "The following triplets add up to zero:"
echo "${triplets[@]}"
