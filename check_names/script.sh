#!/bin/bash

files=($(ls))

for file in "${files[@]}"; do
	if [ -f "$file" ]; then
		name_without_extensions="${file%.*}"
		
		if grep -q "$name_without_extensions" "$file"; then 
			echo "Plik $file zawiera w swojej zawartości swoją nazwę"
		fi
	fi

done
