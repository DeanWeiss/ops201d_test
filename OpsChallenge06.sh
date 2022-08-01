#!/bin/bash

# Script: Ops 201 Class 06 Ops Challenge Solution
# Author: Dean Weiss
# Date of latest revision: 01 August 2022
# Purpose: Create a script that detects if a file or directory exists, then creates it if it does not exist.
#              - Your script must use at least one array, one loop, and one conditional.

# Main

docs=(doc1.txt doc2.txt doc3.txt)
echo "Let's look for a text document, y/n?"
read looking
while [[ $looking == y ]]
do
    echo 'Which document should we look for?'
    echo ${docs[@]}
    read file
    if [ -f  $file ]
        then
            echo "The file exists."     
    else
        echo "The file does not exist. Should we create it, (y/n)?"
        read create
        if [ $create == y ]
        then
            touch $file
            echo " $file was created."
        fi
    fi
done

# End