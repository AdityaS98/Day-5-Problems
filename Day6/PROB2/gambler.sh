#!/bin/bash

money=100
goal=200
bet=1
num_bets=0
num_wins=0

while [ $money -gt 0 ] && [ $money -lt $goal ]
do
    ((num_bets++))
    result=$((RANDOM % 2))  # 0 = loss, 1 = win

    if [ $result -eq 1 ]
    then
        ((num_wins++))
        ((money+=bet))
    else
        ((money-=bet))
    fi
done

echo "Game over."
echo "Number of bets made: $num_bets"
echo "Number of times won: $num_wins"
echo "Final balance: Rs $money"
