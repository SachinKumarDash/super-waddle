<<doc
Name: Sachin Kumar Dash
Date: 21 July 2022
Description: Script to print system information using commands
Sample Input: Run the script ./system_info.sh and Enter the choice : 2
Sample Output: Your shell directory is /bin/bash 
doc


#!/bin/bash                                                                #shebang line
                                                                           #menu for user to select
echo "1. Currently logged users                                            
2. Your shell directory
3. Home directory
4. OS name & version
5. Current working directory
6. Number of users logged in
7. Show all available shells in your system
8. Hard disk information
9. CPU information.
10. Memory Informations
11. File system information.
12. Currently running process."


var=y
while [ $var = "y" ]                                                       #condition to repeat the loop till the user wants
do
    read -p "Enter the choice : " choice                                   #case statement for each menu
    case $choice in
    1) echo "Currently logged users is" `whoami` ;;
    2) echo "Your shell directory is" `printenv SHELL` ;;
    3) echo "Home directory is" `printenv HOME` ;;
    4) echo "OS name & version is" `uname -a` ;;
    5) echo "Current working directory is" `pwd` ;;
    6) echo "Number of users logged in is" `who -q` ;;
    7) echo "Show all available shells in your system is `cat /etc/shells`" ;;
    8) echo "Hard disk information is "
        lshw ;;
    9) echo "CPU information. is "
        lscpu ;;
    10) echo "Memory Informations is "
        lsmem ;;
    11) echo "File system information. is "
        df;;
    12) echo "Currently running process. is" 
        ps ;;
    *) echo "Error : Invalid option, please enter valid option";;
esac
bold=$(tput bold)
normal=$(tput sgr0)                                                         #to convert the letter bold and normal
read -p "${bold}Do you want to continue (y/n) ?"${normal} var
done
   echo

