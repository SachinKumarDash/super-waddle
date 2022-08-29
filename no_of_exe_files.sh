<<doc
Name: Sachin Kumar Dash
Date: 31 July 2022
Description: For each directory in the $PATH, display the number of executable files in that directory
Sample Input: run the script
Sample Output: Current dir: /usr/local/sbin
               current count: 0
               Current dir: /usr/local/bin
               current count: 0
               Current dir: /usr/sbin
               current count: 205
doc




#!/bin/bash                                                       #shebang line

arr=(`printenv PATH | tr ":" " "`)                                #storing path in an array
count=0                                                           #initialising for executable file count
total=0                                                           #initialising for total exe file count
for i in ${arr[@]}                                                #condition to check if it's a directory
do
    if [ -d $i ]
    then
        cd $i                                                     #go to the respective dir
        arr1=(`ls`)                                               #all file list storing in array
        for j in ${arr1[@]}                                       #condition to check all content
        do  
            if [ -f $j ]                                          #to check if the content is a file
            then
                if [ -x $j ]                                      #tocheck if it's executable
                then
                    count=`expr $count + 1`                       #add exe file one by one and store in count
                    total=$(($total + 1))                         #add total no. of exe file
                fi  
            fi
        done
        echo "Current dir: $i"
        echo "current count: $count"
    fi  
done
echo "total - " $total
