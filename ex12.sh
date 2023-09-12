#!/bin/sh
echo -n "What is your name [ `whoami` ] " # Echo text, subsituting in the current user 
read myname # Read input
if [ -z "$myname" ]; then # Check if the previous line read anything
	myname=`whoami` # If not, set myname to the current user
fi
echo "Your name is: $myname" # Print the string with the variable $myname
echo "Your name is: ${myname:-`whoami`}" # Prints the string with $myname, or falls back onto `whoami`

