<<doc
Name of the author: Sachin Kumar Dash
Date: 29 July 2022
Description: Script to perform arithmetic operation on digits of a given number 
Sample Input: ./operator_dependent.sh 1234+
Sample Output: Sum of digits = 10
doc
#!/bin/bash                                                                                    #Shebang Line

if [ $# -eq 1 ]                                                                                #Condition for CLA check
then
    num=$1                                                                                     #Assign the string to a variable
    operator=`echo ${num: -1}`                                                                 #Separate the Operator 
    case $operator in
	+)sum=${num:0:1}                                                                           #Case for sum
	    len=${#num}
	    sum1=`expr $len - 2`

	    for i in `seq 1 $sum1`
	    do
		sum=`expr $sum + ${num:$i:1}`
	    done
	    echo "Sum of digits = $sum" ;;
	-)sub=${num:0:1}                                                                           #Case for substraction
	    len=${#num}
	    sub1=`expr $len - 2`

	    for i in `seq 1 $sub1`
	    do
		sub=`expr $sub - ${num:$i:1}`
	    done
	    echo "Subtraction of digits = $sub" ;;
	x)mul=${num:0:1}                                                                            #Case for multiplication
	    len=${#num}
	    mul1=`expr $len - 2`

	    for i in `seq 1 $mul1`
	    do
		mul=`expr $mul \* ${num:$i:1}`
	    done
	    echo "Multiplication of digits = $mul" ;;
	/)div=${num:0:1}                                                                             #Case for Division
	    len=${#num}
	    div1=`expr $len - 2`

	    for i in `seq 1 $div1`
	    do
		div=`echo "scale=2 ; $div / ${num:$i:1}" | bc`
	    done
	    echo "Division of digits = $div" ;;
	*)echo "Error: Operator missing or invalid operator, please pass operator as last digit (+,-,x,/)" ;;
    esac
else
    echo "Error : Please pass the arguments through CL.
Usage : ./operator_dependent.sh 2345+"
fi


