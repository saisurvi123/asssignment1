#! /bin/bash

read file
stat -c %s $file
wc -l < $file
words=`wc --word < $file`
echo $words
awk '$0="Line No:"NR" - Count of Words:"NF' $file
function wordfreq() {
  awk '
     BEGIN { FS="[^a-zA-Z]+" } {
         for (i=1; i<=NF; i++) {
             word = tolower($i)
             words[word]++
         }
     }
     END {
         for (w in words)
              printf("Word:%s - Count of repitition:%3d\n",w,words[w] )
     } ' | sort -rn
}
cat $file | wordfreq