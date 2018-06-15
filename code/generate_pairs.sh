#!/bin/bash

NUMFILES=$(($(ls -lh ../videos/ | wc -l)-1))
k=1;
for ((i=1;i<=$NUMFILES;i++)); 
do 
    for ((j=$((i+1));j<=$NUMFILES;j++));
    do
	sed "s/Pair #1/Pair #$k/" pair.html > pair$k.html
	sed -i '' "s/vida/vid$i/" pair$k.html
	sed -i '' "s/vidb/vid$j/" pair$k.html
	((k++))
    done
done