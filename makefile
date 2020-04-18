all: README.md

README.md: guessinggame.sh
	echo "##ubuntu project">README.md
	date >> README.md
	wc -l guessinggame.sh>> README.md
