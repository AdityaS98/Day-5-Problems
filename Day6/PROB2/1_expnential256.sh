#!/bin/bash

if [ $# -ne 1 ]
then
  echo "Usage: $0 n"
  exit 1
fi

n=$1

if [ $n -lt 0 ]
then
  echo "Error: n should be a non-negative integer."
  exit 1
fi

if [ $n -gt 8 ]
then
  echo "Warning: n is greater than 8. Table will only print up to 2^8 = 256."
  n=8
fi

echo "Powers of 2 less than or equal to 2^$n:"

i=0

while [ $i -le $n ]
do
  power=$((2**i))
  if [ $power -gt 256 ]
  then
    break
  fi
  echo "2^$i = $power"
  i=$((i+1))
done
