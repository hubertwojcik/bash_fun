#!/bin/bash
# --------------------------------
# Script: create_folders.sh
# Description: Create directory for each folder name in provided list
# Author: Hubert Wójcik
# Date: 25.10.2024
# Version: 1.0
# --------------------------------

while read line; do
	mkdir "$line"
done < "$1"

