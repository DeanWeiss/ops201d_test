#!/bin/bash

# Script: Ops 201 Class 05 Ops Challenge Solution
# Author: Dean Weiss
# Date of latest revision: 29 July 2022
# Purpose: Write a script that: Write a script that displays running processes, asks the user for a PID, then kills the process with that PID. Use a loop in your script.

# Main


for i in choose
    do 
        ps aux | grep dean | grep -v grep | awk '{print $2 $11}'
        echo $choose
    done

echo "Choose a PID"
read procname
kill $(ps aux | grep $procname | grep -v grep | awk '{print $2}')
# End