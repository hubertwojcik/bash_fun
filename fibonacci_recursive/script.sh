#!/bin/bash

fibonacci(){
	local n=$1
	if [ "$1" -le 1 ]; then
		echo "$n"
	else
		prev1=$(fibonacci $(($n - 1)))
		prev2=$(fibonacci $(($n - 2)))
		echo $((prev1 + prev2))
	fi	
}

read -p "Podaj liczbę: " n

if [ "$n" -le 0 ]; then
	echo "Podaj liczbę nieujemną"
	exit 1
fi

echo "N-ty wyraz ciągu to $(fibonacci $n)"
