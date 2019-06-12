#!/bin/bash

total=0;
find data | sort | while read in;
do
  if [ -f "$in" ]; then
    count=$(wc -l $in | cut -d' ' -f1);
    total=$((total + count));
    echo -n "[*] $in -               " | cut -z -b1-22
    echo -n "$count                  " | cut -z -b1-10
    echo    "(total: $total)";
    echo $total > /tmp/total.txt
  fi;   
done
echo "$(date +%D) -  $(cat /tmp/total.txt)" >> total.txt
