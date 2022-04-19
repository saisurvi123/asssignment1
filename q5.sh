#! /bin/bash

read str

strlen=${#str}

for (( i=$strlen-1; i>=0; i-- ))
do
	s=$s${str:$i:1}
done

echo $s

for (( j=0; j<$strlen; j++ ))
do
	char=${s:$j:1}
	charint=$(printf "%d" "'$char'")
	let charint=$charint+1
	if [ $charint -eq 123 ]
	then
        	charint=97
	fi
	if [ $charint -eq 90 ]
	then
		charint=65
	fi
	newchar=$(printf "\x$(printf %x $charint)")
	ans=$ans$newchar
done
echo $ans

let n=strlen/2

s1=${str:$n:n}

for (( i=$n-1; i>=0; i-- ))
do
	temp=$temp${str:$i:1}
done

ans1=$temp$s1
echo $ans1



