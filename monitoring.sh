#!/bin/sh
free -m | awk 'NR==2{printf "Memory Usage: %s/%sMB (%.2f%%)\n", $3,$2,$3*100/$2 }'
df -h | awk '$NF=="/"{printf "Disk Usage: %d/%dGB (%s)\n", $3,$2,$5}'
top -bn1 | grep load | awk '{printf "CPU Load: %.2f\n", $(NF-2)}'
#here we are you going to develope a script for various options on user accounts
echo -e "active logins"
#[ 1 ] for counting the number of logged-in user accounts  \n
#[ 2 ] for listing the names of currently logged-in users
    #-q option is to count the number of users and print the logged-in users.
    # instead of -q, --count can also be used.
    # -v is used to exclude any pattern

who --count | grep users
nload
