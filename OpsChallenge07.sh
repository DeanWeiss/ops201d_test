#!/bin/bash

# Script: Ops 201 Class 07 Ops Challenge Solution
# Author: Dean Weiss
# Date of latest revision: 02 August 2022
# Purpose: Create a script that runs lshw and shows specific information

# Main

echo "-----------Name of Computer---------------"
sudo lshw | grep 'description: Computer'
echo "-----------CPU---------------"
sudo lshw -c cpu | grep -v grep | grep -v version | grep -v capabilities
echo "-----------RAM---------------"
sudo lshw -c memory | grep -v BIOS | grep -v vendor | grep -v 2 | grep -v 0 | grep -v pci | grep -v VirtualBox | grep -v '*-firmware'
echo "-----------DISPLAY ADAPTER----------"
sudo lshw -c video
echo "------------BIOS---------------"
sudo dmidecode

#End