#!/bin/bash

read -p "Enter the lower bound of the range: " lower
read -p "Enter the upper bound of the range: " upper

for ((num=$lower;num<=$upper;num++))
do
  if [ $num -lt 2 ]
  then
    continue
  fi

  is_prime=true

  for ((i=2;i<=$num/2;i++))
  do
    if [ $((num%i)) -eq 0 ]
    then
      is_prime=false
      break
    fi
  done

  if [ $is_prime == true ]
  then
    echo "$num is a prime number."
  fi
done
