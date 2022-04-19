#! /bin/bash


read  str
IFS=',' read -r -a num <<< "$str"
n=${#num[@]}

# echo "before sorting"
# echo ${num[*]}

for ((j = 0; j<$n; j++))
do
    
    for((k = 0; k<$n-j-1; k++))
    do
    
        if [ ${num[k]} -gt ${num[$((k+1))]} ]
        then
            temp=${num[k]}
            num[$k]=${num[$((k+1))]}  
            num[$((k+1))]=$temp
        fi
    done
done

# echo "Array after sorting :"
echo ${num[*]}
