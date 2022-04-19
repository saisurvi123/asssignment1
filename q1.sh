#! /bin/bash
grep . quotes.txt 
awk '!seen[$0]++' quotes.txt 

