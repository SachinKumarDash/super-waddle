<<doc
Name: Sachin Kumar Dash
Date: 26 July 2022
Description: Shell script to convert string lower to upper and upper to lower
Sample Input:  ./upper_lower.sh file.txt
                1 – Lower to upper
                2 – Upper to lower
                Please Select option : 1
Sample Output: Change all lowercase character in the document to uppercase.
doc

#!/bin/bash                                            #Shebang Line

if [ $# -gt 0 ]                                        #condition to check if cla is passed or not
then
    if [ -f $1 ]                                       #condition to check if passed cla is a file or not
    then
        if [ -s $1 ]                                   #condition to check if the passed file has content or not
        then
            echo "1 – Lower to upper"                  #case statement for lower to upper conversion
            echo "2 – Upper to lower"                  # case statement for upper to lower conversion
        read -p "Please select option : " n
        case $n in
            1)tr a-z A-Z < $1
                ;;
            2)tr A-Z a-z < $1
                ;;
        esac
    else
        echo "Error: No contents inside the file."
        fi
    else
        echo "not a file"
    fi  
else
    echo "Error : Please pass the file name through command line."
fi
