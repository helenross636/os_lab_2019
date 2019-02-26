#!/bin/bash
chmod +x numb.txt
sed -i -e 's/\r$//' numb.txt
if [ -x numb.txt ]
then
    k=0;
    while read line; do
        num[$k]="$line"
        k=$(($k+1))
    done <numb.txt
    echo "Count of numbers: $k"
    sum=0
    for a in ${num[@]}
    do
        let sum=sum+a
    done
    let av=sum/k
    echo "Result: $av"
fi