#!/bin/bash
# --------------------------------
# Script: temperature_converter.sh
# Description: Simple temperature converter
# Author: Hubert Wójcik
# Date: 24.10.2024
# Version: 1.0
# --------------------------------


while getopts "f:c:" opt; do
	case $opt in
		c) result=$(echo "scale=2; ($OPTARG * (9 / 5))+32" | bc );;
                f) result=$(echo "scale=2; ($OPTARG - 32) * (5 / 9)" | bc);;
		?);;
	esac

done 
echo $result
