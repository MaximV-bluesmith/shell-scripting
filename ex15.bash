#!/bin/bash

add_record(){
	echo -n "Name: "
	read -r NAME
	echo -n "Surname: "
	read -r SURNAME
	echo -n "Email: "
	read -r EMAIL
	echo -n "Phone: "
	read -r PHONE
	echo "$NAME | $SURNAME | $EMAIL | $PHONE" >> addressBook.txt
}

record_prompt_shopt(){ # Bash Only
	shopt -s nocasematch  # Should work, doesnt
	while [ "$OPT" != "n" ]; do
		echo -n "Select Option (Y/N): "
		read -r OPT
		if [ "$OPT" = "y" ]; then
			add_record
		elif [ "$OPT" != "n" ]; then
			echo "Invalid option: $OPT"
		fi
	done
	shopt -u nocasematch
}
record_prompt_commas(){ # Also Bash Only
	while [ "$OPT" != "n" ]; do
		echo -n "Select Option (Y/N): "
		read -r OPT; OPT=${OPT,,}
		if [ "$OPT" = "y" ]; then
			add_record
		elif [ "$OPT" != "n" ]; then
			echo "Invalid option: $OPT"
		fi
	done
}
record_prompt_tr(){
	while [ "$OPT" != "n" ]; do
		echo -n "Select Option (Y/N): "
		read -r OPT; OPT=$(echo "$OPT" | tr '[:upper:]' '[:lower:]')
		if [ "$OPT" = "y" ]; then
			add_record
		elif [ "$OPT" != "n" ]; then
			echo "Invalid option: $OPT"
		fi
	done
}
record_prompt_case(){
	while true; do
		echo -n "Select Option (Y/N): "
		read -r OPT
		case "$OPT" in
			"y"|"Y")
				add_record;;
			"n"|"N")
				break;;
			*)
				echo "Invalid option: $OPT";;
		esac
	done
}

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
