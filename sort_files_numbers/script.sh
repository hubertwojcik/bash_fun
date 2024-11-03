#!/bin/bash

if [ -z "$1" ]; then
	echo "Uzycie: $0 file_name"
	exit 1
fi

if [ ! -f "$1" ]; then
	echo "Plik '$1' nie istnieje lub nie jest plikiem"
	exit 1
fi

sort -n "$1"

liczba_numerow=$(wc -l < "$1")
echo "Liczba wszystkich liczb to: $liczba_numerow"

unikalne=$(sort -n "$1" | uniq | wc -l)
echo "Liczba unikalnych liczb to: $unikalne"

powtorzone=$((liczba_numerow - unikalne))
echo "Liczba powtórzonych to : $powtorzone"

exit 0
