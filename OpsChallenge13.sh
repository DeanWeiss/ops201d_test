# Script: Ops 201 Class 13 Ops Challenge Solution
# Author: Dean Weiss
# Date of latest revision: 10 August 2022
# Purpose: Create a script that asks a user to type a domain, then displays information about the typed domain

# Main

Getinfo () {
    read -p "Please type URL." url
    whois $url >> url.txt
    dig $url >> url.txt
    host $url >> url.txt
    nslookup $url >> url.txt
}

Getinfo

nano url.txt

# End