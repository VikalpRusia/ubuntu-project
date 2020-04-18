#!/bin/bash
# File: guessinggame.sh
# Author: VikalpRusia
# Date: 18-April-2020

let file_number=$(ls -a "$(pwd)" | wc -l)-2
var=-1

function classic_old_games {
	while [[ true ]]
	do
		
		echo "how many files are in the current directory, guess them"
		read var
		if [[ $var =~ ^[0-9]+$ ]]
		then
			if [[ $(bc <<< "$var > $file_number") = 1 ]]
			then
				echo " too high "
			elif [[ $(bc <<< "$var < $file_number") = 1 ]]
			then
				echo " too low "
			else
				echo "Congratulations your guess is correct"
				break;
			fi
		else
			echo "incorrect parameter"
		fi
		echo ""
		
	done
}

classic_old_games

