<<doc
Name of the author: Sachin Kumar Dash
Date: 22 July 2022
Description: A script for arithmetic calculator using command line arguments
Sample execution: -
1. ./arithmatic_calc.sh 25 + 41
25 + 41 = 66
2. ./arithmatic_calc.sh 10 x 5
10 x 5 = 50
3. ./arithmatic_calc.sh 25 / 5
25 / 5 = 5.00
4. ./arithmatic_calc.sh 10.2 – 5.6
10.2 – 5.6 = 4.6
5. ./arithmatic_calc.sh
Error : Please pass the arguments through command line.
Usage:./arithmatic_calc.sh 2.3 + 6.7
6. ./arithmatic_calc.sh 3.4
Error:Please pass 3 arguments.
Usage:./arithmatic_calc.sh 2.3 + 6.7

doc


#!/bin/bash

if [ $# -gt 0 ]   #check if argument passed through command line or not
then
    if [ $# -eq 3 ] #check if 3 argument passed or not
    then
case $2 in      #middle argument is operator
    +) add=`echo $1 + $3 | bc`   #condition for plus operator
        echo "$1 $2 $3 = $add" ;;
    -) sub=`echo $1 - $3 | bc`   #conditionfor minus operator
        echo "$1 $2 $3 = $sub" ;;
    x) mul=`echo $1 \* $3 | bc`   #condition for multiplication operator
        echo "$1 $2 $3 = $mul" ;;

    /)div=`echo "scale=2 ; $1 / $3" | bc` #condition for division operator
        echo " $1 $2 $3 = $div" ;;
    *)echo "Invalid operator"    #output if user enters other then above four operator

esac
else
    echo "Error:Please pass 3 arguments.
Usage:./arithmatic_calc.sh 2.3 + 6.7"
    fi  
else
    echo "Error : Please pass the arguments through command line.
Usage:./arithmatic_calc.sh 2.3 + 6.7"
fi

