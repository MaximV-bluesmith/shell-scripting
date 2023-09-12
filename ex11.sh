#!/bin/sh
/usr/local/bin/my-command # Runs script/program at given location (and fails)
if [ "$?" -ne "0" ]; then # Checks the error code of the last program to run
	echo "Sorry, we had a problem there!" 	# Runs if return code is not 0
fi # Closes if statement
