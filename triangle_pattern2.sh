<<doc
Name of the Author: Sachin Kumar Dash
Date: 21 July 2022
Description: Read 'n' and generate a pattern given below(number increasing from Top to bottom)
Sample Input: 4
Sample Output: 1
               2 3
               4 5 6
               7 8 9 10
doc


#!/bin/bash                                 # Shebang Line

read -p "Enter a number: " n                # To read input from user

num=1                                       # Initialise to print from 1

for row in `seq $n`                         # For row increment till given value by  user
do
    for col in `seq $row`                   # For column increment till row
    do  
        echo -n "$num "                     # Start print from initial num
        num=`expr $num + 1`                 # Increment num value every time

    done                                    # Closing of inner for loop
    echo                                     
done                                        # Closing of outer for loop

