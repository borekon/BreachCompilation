#!/bin/bash
# Some files come with semicolon instead of colon, so the script sorter.sh gives an error and no data is recorded.
# This script changes all the semicolons in a file to colons

for i in inputbreach/*; do
  sed -i 's/\;/\:/g' $i
done
