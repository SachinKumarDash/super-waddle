<<doc
Name: Sachin Kumar Dash
Date: 30 July 2022
Description: script to determine whether a given file system or mount point is mounted
Sample Input: ./mounted_fs.sh /dev/sda2
Sample Output: File-system /dev/sda2 is mounted on / and it is having 98%
used space with 3298220 KB free.
doc



#!/bin/bash     #shenang line

if [ $# -eq 1 ]  #condition to check if cla is passed or not
then
    flag=0      #initializing flag
    filesystem=(`df | cut -d " " -f1`)    #storing filesystem in an array
    available=(`df -h | tr -s " " | cut -d " " -f4`)   #available space
    mounted=(`df | tr -s " " | cut -d " " -f6`)     #mount point of filesystem
    used=(`df | tr -s " " | cut -d " " -f5`)
    for i in `seq 1 $((${#filesystem[*]}-1))`       #loop till the last index position of array
    do
        if [ $1 = ${filesystem[$i]} ]
        then
            flag=1    #marking a flag for all true outcomes
            echo "File-system $1 is mounted on ${mounted[$i]} and it is having ${used[$i]} used space with ${available[$i]}  free."
        fi  
    done
    if [ $flag -eq 0 ]    #in case loop 1 failed in checking the mount point.
    then
        echo "$1 is not mounted."
    fi  
else
    echo "Error : Please pass the name of the file-system through command line."
fi
