#!/bin/bash


if [ -z "$1" ]; then
	echo "Nie podano nazwy pliku"
	exit 1
fi

if [! -f "$1" ]; then
	echo "Plik nie istnieje lub nie jest plikiem"
	exit 1
fi


sort "$1"

