<<doc
Name: Sachin Kumar Dash
Date: 29 July 2022
Description: Script called say_hello, which will print greetings based on time
Sample Input: When we start shell (whenever you opening new tab or terminal)
Sample Output: Good Morning user, Have nice day!
               This is Thursday 08 in June of 2017 (10:44:10 AM)
doc


#!/bin/bash                                                        #shebang line

hour=`date +%H`                                                    #hour in 24hour format
day=`date +%A`                                                     #day of the week
month=`date +%B`                                                   #current month
year=`date +%Y`                                                    #year
time=`date | cut -d " " -f5,6                                      #time in local format am/pm`

if [ $hour -ge 5 -a $hour -lt 12 ]                                 #condition for different period of time and respective greetings
then
    echo "Good Morning `whoami`, Have nice day!"
elif [ $hour -ge 12 -a $hour -lt 14 ]
then
    echo "Good noon `whoami`, Have nice day!"
elif [ $hour -ge 14 -a $hour -lt 17 ]
then
    echo "Good afternoon `whoami`, Have nice day!"
elif [ $hour -ge 17 -a $hour -lt 21 ]
then
    echo "Good evening `whoami`, Have nice day!"
else
    echo "Good night `whoami`, Have nice day!"                     #default statement
fi
echo "This is $day in $month of $year ($time)"                     #priting day,month and year

