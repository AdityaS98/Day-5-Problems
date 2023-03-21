#!/bin/bash
read -p "Enter the value:" n


for ((i=1;i<=$n;i++))
do
  power=$((2*$i))
  echo $power
done
