<<doc
Name of the author: Sachin Kumar Dash
Date: 26 July 2022
Description: Script to delete empty lines from a file 
Sample Input: ./delete_empty_lines.sh file.txt
Sample Output: Empty lines are deleted
doc

#!/bin/bash

if [ $# -gt 0 ]  #check if command line argument is passed or not 
then
    if [ -f $1 ] #check if passed argument is a file or not
    then
        `sed -i /^[[:blank:]]*$/d $1` #if it is a file then delete empty lines
         echo "Empty lines are deleted"   #on deleting give a message to user as lines are deleted
         cat $1
        
    else
        echo
    fi  
else
   echo "Error: Please pass the file name through command line."
fi

