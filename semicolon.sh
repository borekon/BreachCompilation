#!/bin/bash
# Some files come with semicolon or spaces instead of colon, so the script sorter.sh gives an error and no data is recorded.
# This script changes all the semicolons in a file to colons

t=1;
o=1;
p=1
for i in inputbreach/*;
do if head -n1 -q "$i" | grep ";" >> /dev/null
then
    echo "Found $i" ;
    echo "Replacing...";
    sed -i 's/\;/\:/g' "$i" ;
    echo -e "Replaced $t files so far\n";
    t=$((t+1));
    elif head -n1 -q "$i" | grep "\ ">> /dev/null 
    then
	    echo "Spaces in $i";
	    echo "Replacing...";
	    sed -i 's/\ /\:/g' "$i";
	    echo -e "Replaced $o files so far\n";
	    o=$((o+1));
	     elif head -n1 -q "$i" | grep "," >> /dev/null
    then
            echo "Comma found in $i";
            echo "Replacing...";
            sed -i 's/\,/\:/g' "$i";
            echo -e "Replaced $p files so far\n";
            p=$((p+1));
    fi
done
echo "Replaced $t files with ;";
echo "Replaced $o files with spaces";
echo "Replaced $p files with commas";
