#! /bin/env bash

function getNumFiles {
	shopt -s nullglob
	local numfiles=(*)
	numfiles=${#numfiles[@]}
	echo $numfiles
}

correctGuess=false
echo "Guess how many files are in the current directory (don't include directories): "

while [[ $correctGuess == false ]]
do
	read guess
	actualNumFiles=$(getNumFiles)
	if [[  $guess -eq $actualNumFiles ]]
	then
		correctGuess=true
	elif [[ $guess -lt $actualNumFiles ]]
	then
		echo "Too low. Guess again: "
	else
		echo "Too high. Guess again: "
	fi
done
echo "Good job. You guessed correctly."
