<<doc
Name: Sachin Kumar Dash
Date: 30 July 2022
Description: Script to print contents of a directory without ls command
Sample Input: Run the script in present working directory with passing directory through cla 
Sample Output: List of content in passed dir in cla 
doc


#!/bin/bash                                                                        #shebang line

if [ $# -eq 0 ]                                                                    #condition checking for CLA
then
    echo *                                                                         #output if no CLA pass
elif [ $# -ge 1 ]                                                                  #condition for 1 or more CLA
then
for i in $*                                                                        #loop to check all CLA
    do
        if [ -d $i ]                                                               #to check if passed CLA is a dir or not
        then
            cd $i                                                                  #path
            echo "$i: "  
            echo *                                                                 #list all content
        else
            echo "Cannot access ‘$i’ : No such a file or directory."
        fi
    done

else
    echo
fi

