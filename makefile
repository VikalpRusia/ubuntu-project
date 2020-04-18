all: README.md

README.md: guessinggame.sh
	echo "## ubuntu project file">README.md
	echo "Make is created at" $$(date) '\n'>> README.md
	echo "lines are " $$(wc -l guessinggame.sh| egrep -o "[0-9]*")>> README.md
