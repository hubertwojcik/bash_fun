#!/bin/bash

read -p "Podaj wartość n: " n

if [ "$n" -le 0 ]; then
	echo "n musi być liczbą większą od zera"
	exit 1
fi

if [ -n "$2" ]; then
	echo "Drugi parametr to: $2"
else
	echo "Brak drugiego parametru"	
fi

if [ "$n" -ne 2 ]; then
	if [ -n "${!n}" ]; then
		echo "N-ty parametr to: ${!n}"
	else
		echo "N-ty parametr nie istnieje"
	fi
fi


exit 0


