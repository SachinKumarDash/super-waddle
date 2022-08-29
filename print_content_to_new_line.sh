<<doc
Name: Sachin Kumar Dash
Date: 22 July 2022
Description: Script to print contents of file from given line number to next given number of lines
Sample Input: ./print_lines.sh 5 3 myfile.txt
Sample Output: line number 5
               line number 6
               line number 7
doc

#!/bin/bash

if [ $# -gt 0 ] 
then
    if [ $# -eq 3 ] 
    then
        total=`cat $3 | wc -l`
        sum=`expr $1 + $2`
        sum1=`expr $sum - 1`
        if [ $total -gt $sum ]
        then
            echo "`head -n $sum1 $3 | tail -n $2`"
        else
            echo "Error: data.txt is having only 10 lines. file should have atleast 14 lines"
        fi  

    else
        echo "Error: arguments missing!
Usage: ./file_filter.sh start_line upto_line filename
For eg. ./file_filter.sh 5 5 <file>"
    fi  
    else
        echo
    fi  
