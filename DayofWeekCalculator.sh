#!/bin/bash

########################################################################
#                       Day of the Week Calculator                     #
########################################################################
#                               Sinwindie                              #
########################################################################
# Program will prompt the user for a date in the yyymmdd format and    #
# return the date to the user and provide what day of the week the     #
# provided date falls on.                                              #
########################################################################
#                       Last Updated: January 6, 2019                  #
########################################################################

clear
#Clears terminal screen

echo "Welcome to the date to day of the week calculator."
echo "Enter any date to determine what day of the week it falls on,"
read -p "Enter a date in yyyymmdd format to begin: " input
# Obtains input from user

DoW=$(date -d $input +%A)
#Uses input to determine day of week

year="${input:0:4}"
month="${input:4:2}"
day="${input:6:2}"
#Breaks up input to year, month, and days

if [ $month == 01 ]
then
	strmonth="January"
elif [ $month == 02 ]
then
	strmonth="February"
elif [ $month == 03 ]
then
	strmonth="March"
elif [ $month == 04 ]
then
	strmonth="April"
elif [ $month == 05 ]
then
	strmonth="May"	
elif [ $month == 06 ]
then
	strmonth="June"	
elif [ $month == 07 ]
then
	strmonth="July"		
elif [ $month == 08 ]
then
	strmonth="August"	
elif [ $month == 08 ]
then
	strmonth="September"	
elif [ $month == 10 ]
then
	strmonth="October"	
elif [ $month == 11 ]
then
	strmonth="November"		
elif [ $month == 12 ]
then
	strmonth="December"		
fi
#Assigns string of month based on user input

echo -n "$strmonth $day, $year falls on a $DoW."
#Prints results to screen
