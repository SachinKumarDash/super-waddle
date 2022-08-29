<<doc
Name: Sachin Kumar Dash
Date: 23 July 2022
Description: A script to print the length of each and every string using arrays
Sample Input: ./string_length.sh hello hai how are you?
Sample Output: Length of string (hello) - 5
               Length of string (hai) - 3
               Length of string (how) - 3
               Length of string (are) - 3
               Length of string (you?) - 4
doc

#!/bin/bash                                           #Shebang Line
if [ $# -gt 0 ]                                       # Check if CLA is passed or not
then
arr=($*)                                              # To pass number of arrays in CLA
len=${#arr[@]}                                        # Total length of array
for i in `seq 0 $((len - 1 ))`                        # Condition to print element name and length
do
    echo "Length of string (${arr[i]})-${#arr[i]}"
done
else
    echo "Error : Please pass the arguments through command-line."
fi
