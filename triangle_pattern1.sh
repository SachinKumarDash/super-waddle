<<doc
Name of the Author: Sachin Kumar Dash
Date: 19 July 2022
Description: Read 'n' and generate a pattern( number increments from left to right)
Sample Input: 4
Sample Output: 1
               1 2
               1 2 3
               1 2 3 4
doc

#!/bin/bash                          #Shebang Line

read -p "Enter a number : " n        #To take input From User
for row in `seq $n`                  #For row print
do
    for col in `seq $row`            #For column print
    do
	   echo -n "$col "              #Execution
    done                             #Inner for loop completion
    echo
done                                 #Outer for loop completion


