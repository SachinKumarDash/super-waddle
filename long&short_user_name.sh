<<doc
Name: Sachin Kumar Dash
Date: 31 July 2022
Description: Display the longest and shortest user-names on the system
Sample Input: ./largest_username.sh 
Sample Output: The Longest Name is: speech-dispatcher
               The Shortest Name is:lp
doc




#!/bin/bash                                              #shebang line

arr=(`cat /etc/passwd | cut -d ":" -f1`)                 #storing the userid in an array


long=root                                                #initialisation for long string 
short=bin                                                #initialisation for short string
for i in ${arr[@]}                                       #condition to check each user name
do
    if [ ${#i} -gt ${#long} ]                            #condition for string comparison
    then
        long=$i                                          #updating long string
    fi  
    done
    echo "The Longest Name is: $long"                    #printing the final updated longest string

    for j in ${arr[@]}                                   #condition for shortest user name
    do  
    if [ ${#j} -lt ${#short} ]                           #string comparison to get shortest value
    then
        short=$j                                         #updating short 
    fi  
done
echo "The Shortest Name is:$short"                       #printing the final shortest updated user name

