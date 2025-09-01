#!/bin/bash
# nginx_log_analyser
# A simple analyser for nginx log files

# Copyright (c) 2025 Murg Mihai Eduard
# Licensed under the MIT License
# See LICENSE file in the project root for more information.

extract_top_values () { #this function extracts top 5 most requested things in the log file.

	echo "Top 5 IP adresses with the most requests:"
	awk '{print $1}' $1 | sort | uniq -c | sort -nr | head -5 | awk '{print$2" - " $1 " requests"}'
	echo ""

	echo "Top 5 most requested paths:"
	awk '{print $7}' $1 | sort | uniq -c | sort -nr | head -5 | awk '{print$2" - " $1 " requests"}'
	echo ""

	echo "Top 5 response status codes:"
	awk '{print $9}' $1 | sort | uniq -c | sort -nr | head -5 | awk '{print$2" - " $1 " requests"}'
	echo ""

	echo "Top 5 user agents:"
	awk -F\" '{print $6}' $1 | sort | uniq -c | sort -nr | head -5 | awk '{print $2" - " $1 " requests"}'
}

error_handling () { # this function handles errors 

	if  [ -z $1 ]; then
		echo "[Error] Please enter a nginx log to analyse." # this verifies if the input is present and not empty
		exit 1

	elif [ ! -f $1 ]; then
		echo "[Error] File not found." # this verifies if the given file exists and is not a directory
		exit 1
	
	else 
		echo -e "[INFO] $1 is ready to analyse.\n" #succes confirmation
		
	fi
}

error_handling "$1"


if [ $? -eq 0 ]; then # if the input is correct then the analyse will follow
	extract_top_values "$1"
fi
