<<doc
Name: Sachin Kumar Dash
Date: 30 July 2022
Description: Count the number of users with user IDs between given range.
Sample Input: ./user_ids.sh 0 100
Sample Output: Total count of user ID between 0 to 100 is : 3



doc


#!/bin/bash                                                                #shebang line
count=0                                                                    #variable initialisation
if [ $# -eq 2 ]                                                            #cla check
then
    if [ $1 -lt $2 ]                                                       #range should be valid
    then
        arr=(`cat /etc/passwd | cut -d ":" -f3`)                           #storing user id in an array
        for i in ${arr[@]}                                                 #check all id to get final count between given range
        do
            if [ $i -gt $1 -a $i -lt $2 ]
            then
                count=`expr $count + 1`
            fi
        done
        echo "Total count of user ID between 0 to 100 is : $count"
    
    
    else
            echo "Error : Invalid range. Please enter the valid range through CL."
        fi
elif [ $# -eq 0 ] 
then
    for i in ${arr[@]}
    do  
        if [ $i -gt 500 -a $i -lt 10000 ]
        then
            count=`expr $count + 1`
        fi
    done
    echo "Total count of user ID between 500 to 10000 is: $count"

else
    echo "Error : Please pass 2 arguments through CL.
Usage : ./user_ids.sh 100 200"
fi
