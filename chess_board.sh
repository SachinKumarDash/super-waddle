<<doc
Name: Sachin Kumar Dash
Date: 21 July 2022
Description: A script to print chess board
Sample Input: Just run the script
Sample Output: A chess board
doc



#!/bin/bash                            #Shebang Line

for row in `seq 8`                     # Chess row 
do
    for col in `seq 8`                 # Chess column
    do  
        sum=`expr $row + $col`         # addition of row and column
        sum1=`expr $sum % 2`           # storing output
        if [ $sum1 -eq 0 ]             # setting condition for even
        then
           echo -e -n "\e[47m" " "     # assigning color for even output
       else
          echo -e -n "\e[40m" " "      # assigning color for odd output
        fi  
    done
    echo -e "\e[0m" " "
done 

