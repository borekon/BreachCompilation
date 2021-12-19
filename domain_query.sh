#!/bin/bash

#List all directory and sub directory
dir=$(find data/ -type f)
if [ "$1" != "" ]; then
	# grep -E -o "\b[A-Za-z0-9._%+-]+@$1\b"
	for cred in $dir
	do
		cat $cred | grep -i -a "$1"
	done
else
	echo "[*] Example: ./query-domain domain.com"
fi
