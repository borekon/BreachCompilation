#!/bin/bash

find data | sort | while read path;
	do
		if [ -f $path ]; then
			sort $path | uniq -d
		fi
	done
