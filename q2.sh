#!/bin/bash
input="quotes.txt"
while read -r line
do
         b=$line
         if [ "$line" != "" ]; then
                prefix=${b#*~} #prefix remove
                suffix=${b%.*} #suffix remove
                echo "$prefix once said,\"$suffix.\"" >>speech.txt
         fi
        

done < "$input"
