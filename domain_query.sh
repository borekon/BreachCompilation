#!/bin/bash

#List all directory and sub directory
if [ "$2" != "" ]; then
	last=$(echo "${2: -1}")
	if [ "$last" == "/" ]; then
		dir=$(find $2 -type f)
	else
		dir=$(find $2/ -type f)
	fi
else
	dir=$(find $(pwd) -type f)
fi


if [ "$1" != "" ]; then
	# grep -E -o "\b[A-Za-z0-9._%+-]+@$1\b"
	for cred in $dir
	do
		cat $cred | grep -E "\b[A-Za-z0-9._%+-]+@$1\b"
	done
else
	echo "[*] Example: ./query-domain domain.com"
fi
