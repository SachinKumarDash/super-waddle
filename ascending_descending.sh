<<doc
Name: Sachin Kumar Dash
Date: 06 August 2022
Description: Script to sort a given number in ascending or descending order
Sample Input: ./sorting.sh -a 5 4 6 2 3 8 9 7 1
Sample Output: Ascending order of array is 1 2 3 4 5 6 7 8 9
doc

#!/bin/bash
    if [ $# -le 2 ]                                                      #condition to check minimum number of cla 
    then
    echo "Error : Please pass the argument through command line.
Usage : ./sorting -a/-d 4 23 5 6 3"
    exit
    fi

array=($@)                                                               #storing all cla in an 'array'

case $1 in
    -a)                                                                  #for ascending order choice -a
        for i in  `seq 1 $(($# - 1))`                                    #passing each element from 1 to last position
        do
            for j in `seq $(($i + 1)) $(($# - 1))`                       #passing eech element again with an incremented value for sorting
            do
                if [ ${array[i]} -gt ${array[j]} ]                       #checking if array[i] greater than array[j]
                then
                    temp=${array[j]}                                     #storing each element array[j] in temp variable if array[i] > array[j]
                    array[j]=${array[i]}                                 #swaping array[j] with array[i]
                    array[i]=$temp                                       #swaping array[i] with temp
                fi
            done
        done
        echo "Ascending order of array is " ${array[@]:1}                 #printing all array elements in ascending order
        ;;
    -d)                                                                  #for descending order choice -d
        for i in  `seq 1 $(($# - 1))`                                    #passing each element from 1 to last position
        do
            for j in `seq $(($i + 1)) $(($# - 1))`                       #passing eech element again with an incremented value for sorting
            do
                if [ ${array[i]} -lt ${array[j]} ]                       #checking if array[i] less than array[j]
                then
                    temp=${array[i]}                                     #storing each element array[i] in temp variable if array[i] < array[j]
                    array[i]=${array[j]}                                 #swaping array[j] with array[i]
                    array[j]=$temp                                       #swaping array[j] with temp
                fi
            done
        done
        echo "Descending order of array is " ${array[@]:1}                #printing all array elements in descending order
        ;;
    *)
        echo "Error : Please pass the choice.
Usage : ./sorting -a/-d 4 23 5 6 3" ;;                                   #printing error if choices other than -a or -d is given by user through $1
esac

