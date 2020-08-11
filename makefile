all:
	echo "Guessing Game" > README.md
	date >> README.md
	wc -l < guessinggame.sh >> README.md
