#!/bin/bash
sum=0
for n in "$@"
do
    let sum=sum+n
done

echo "Count of numbers: $#"
echo "Result: $(($sum/$#))"