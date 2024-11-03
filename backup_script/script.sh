#!/bin/bash

if [ -e "BACKUP" ] &&  [ ! -d "BACKUP" ]; then
	echo "Cataloge alreday exists"
	exit 1
fi

mkdir -p "BACKUP"

for file in *.txt; do
	echo $file
	if [ -f "$file" ]; then
		cp "$file" BACKUP/
		echo 'Plik "$file" został skopiowany'
	fi
done
