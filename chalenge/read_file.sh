#!/bin/bash
#Read lines in a text file and redirect the lines with numbers-only and text-only in separate files.

file="./info.txt"


while read -r line
do  
    if [[ $line =~ ^[0-9]+$ ]] #numbers only
    then 
        echo $line >> numbers.txt

    elif [[ $line =~ ^[a-zA-Z]+$ ]] #letters only
    then 
        echo $line >> text.txt

    else
        echo "Mixed text: $line"
    fi

done < $file
