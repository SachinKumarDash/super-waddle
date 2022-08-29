<<doc
Name: Sachin Kumar Dash
Date: 03 August 2022
Description: Script to replace 20% lines in a C file randomly and replace it with the pattern
Sample Input: ./replace_DEL.sh main.c
Sample Output: Before replacing
               #incude <stdio.h>
               int main()
               {
                    printf(“Hello world\n”);
               }
               After replacing
               #incude <stdio.h>
                int main()
                 {
                    <-----------Deleted------------>
                 }
doc





#!/bin/bash       #shebang line


if [ $# -gt 0 ]                # check if cla is passed or not                                                         
then
    if [ -f $1 ]                                                            #check is cla is a file or not                          
    then
    
      total_lines=`cat $1 | wc -l`                                          #save total lines in a var

        if [ $total_lines -ge 5 ]                                           #condition for total line should be
         then                                                               #greater then 5 so that we could replace 20%

            echo "Before replacing:"                                                   
            cat $1             #show content before replacing

              lc=`echo "$total_lines * 20/100" | bc`                                    

              for i in $lc                                                              
              do
                  random=`shuf -i 1-$total_lines -n1`                        #random number generator                           

                  sed -i "${random}s/.*/<-----------Deleted------------>/" $1           
    
              done

              echo "After replacing:"                                                   
              cat $1                                                         #after replacing show content
    
      else
          echo "Error : main2.c is empty file. So can’t replace the string."         
       fi
   else
       echo "Error : No such a file."                                                   
   fi
   else
       echo "Error : Please pass the file name through command line."                   
   fi
