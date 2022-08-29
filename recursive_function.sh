<<doc
Name: Sachin Kumar Dash
Date: 02 August 2022
Description: Recursive function to print each argument passed to the function
Sample Input: ./recursion.sh How are you? I am fine
Sample Output: How
               are
               you?
               I
               am
               fine
doc



#!/bin/bash                                                           #shebang line

if [ $# -eq 0 ]                                                       #cla checking
then
    echo "Error : Pass the arguments through command line."
fi

display()                                                             #function description
{
    echo $1                                                           #first place value of cla
    arr=($*)                                                          #storing all cla passed
    all=$#                                                            #index of all cla

    if [ $all -le 1 ]                                                 #loop till last value of cla
    then
       return                                                           #terminate when reaching the last
    fi  
    display ${arr[*]:1}                                               #function call
}

display $*

