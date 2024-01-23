#!/bin/bash

while read line; do
    isInFile=$(cat "$2" | grep -i -c "$line")

    if [ $isInFile -eq 0 ]; then
        #string not contained in file
        echo "$line"
    fi

done <$1
