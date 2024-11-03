#!/bin/bash

fibonacci(){
	local n=$1

	if [ $n -le 1 ]; then
		echo "$n"
	fi

	local a=0
	local b=1
	local temp

	for (( i=2; i<=n; i++ )); do
		temp=$((a+b))
		a=$b
		b=$temp
	done
	
	echo "$b"
 
}

read -p "Podaj, który wyraz chcesz obliczyć?  " n

if [ $n -lt 0 ]; then
	echo "Liczba nie może być ujemna"
	exit 1
fi

echo "$n wyraz to:   $(fibonacci $n)"
