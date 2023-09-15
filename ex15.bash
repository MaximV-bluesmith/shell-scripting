#!/bin/bash
# Add library file
source ./ex15.lib

# Logic to select type of prompt
case $1 in 
	"shopt")
		record_prompt_shopt;;
	"commas")
		record_prompt_commas;;
	"tr")
		record_prompt_tr;;
	""|"case")
		record_prompt_case;;
	*)
		echo "No prompt Selected"
		exit 1;;
esac
