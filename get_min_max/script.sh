#!/bin/bash

if [ ! -f "$1" ]; then
	echo "Plik nie istnieje"
	exit 1
fi

if [ ! -s "$1" ]; then
	echo "Plik jest pusty"
	exit 1
fi	

sum=0
max=
min=

while read -r number; do
	sum=$((sum + number ))

	if [ -z "$min" ] && [ -z "$max" ]; then
		min=$number
		max=$number
	else 
		if [ "$number" -lt "$min" ]; then
		min=$number
		fi

		if [ "$number" -gt "$max" ]; then
		max=$number
		fi
	fi
done < "$1"

echo "Suma liczb to: $sum"
echo "Maksymalna liczba to $max"
echo "Minimalna liczba to $min"
