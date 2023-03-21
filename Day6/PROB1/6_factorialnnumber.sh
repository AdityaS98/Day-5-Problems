#!/bin/bash

read -p "Enter a number: " N

if [ $N -lt 2 ]
then
  echo "No prime factors."
  exit 0
fi

echo "Prime factors of $N:"

for ((i=2;i*i<=N;i++))
do
  while [ $((N%i)) -eq 0 ]
  do
    echo $i
    N=$((N/i))
  done
done

if [ $N -gt 1 ]
then
  echo $N
fi
