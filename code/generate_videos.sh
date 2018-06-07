#!/bin/bash

for ((i=2;i<=9;i++)); 
do 
    sed -i '' "s/vid1/vid$i/" vid$i.html
done