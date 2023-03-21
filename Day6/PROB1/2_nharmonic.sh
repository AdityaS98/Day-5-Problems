#!/bin/bash

n=$1
harmonic=0

for ((i=1;i<=$n;i++))
do
  harmonic=$(echo "scale=10;$harmonic + 1/$i" | bc -l)
done

echo "The $n-th harmonic number is: $harmonic"
