#!/bin/bash
# File: guessinggame.sh
# Author: VikalpRusia
# Date: 18-April-2020

file_number=$(ls $pwd | wc -l)
var=0

function classic_old_games {
	while [[ $var != $file_number ]]
	do
		
		echo "how many files are in the current directory, guess them"
		read var
		if [[ $var -gt $file_number ]]
		then
			echo " too high "
		elif [[ $var -lt $file_number ]]
		then
			echo " too low "
		else
			echo "Congratulations your guess is correct"
		fi
		echo ""
		
	done
}

classic_old_games
