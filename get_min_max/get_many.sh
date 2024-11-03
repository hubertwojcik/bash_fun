#!/bin/bash

get_sum_max(){
	if [ ! -f "$1" ]; then
		echo "Plik nie istnieje"
		exit 1
	fi

	if [ !  -s "$1" ]; then
		echo "Plik jes tpusty"
	fi
	
	sum=0
	max=
	min=
	
	while read -r number; do
		sum=$((sum + number))
		if [ -z "$min" ] && [ -z "$max" ]; then
			min=$number
			max=$number
		else
			if [ "$number" -lt "$min"  ]; then
				min=$number
			fi
			if [ "$number" -gt "$max" ]; then
				max=$number
			fi
		fi
			
	done < "$1"
	echo "Wartości dla pliku $1 to:"
	echo "Suma to $sum"
	echo "Wartość max to $max"
	echo "Wartosc min to $min"
		
}


for file in "$@"; do
	get_sum_max "$file"
done
