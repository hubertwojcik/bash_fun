#!/bin/bash

catalog_tree(){
local path=$1
local level=$2

for element in "$path"/*; do
	if [ -d $element ]; then
		printf "%${level}s+ %s\n" "" "$(basename "$element")"
		catalog_tree "$element" $((level + 4))
	elif [ -f "$element" ]; then
		printf "%${level}s- %s\n" "" "$(basename "$element")"
	
	fi
done
}

catalog_tree ".." 0
