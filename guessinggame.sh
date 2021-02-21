#! /bin/bash  
  
# Fetch the number of files in the current directory  
fileCount=`ls -l . | grep -c '^-'` 

function guessGame()
{
	echo "How many files are in the current directory ?"
	echo "Enter your guess (Guess must be a postive integer):"

	# Read user's input
	read input

	while [[ $input -ne $fileCount ]]
		do
			if [[ $input -gt $fileCount ]]
			then
				echo "Your guess is too high, Try again"
			elif [[ $input -lt $fileCount ]]
			then
				echo "Your guess is too low, Try again"
			fi

			echo "Re-enter your guess (Remember guess must be a postive integer):" 
			read input
		done
	
	# Exit game
	echo "Bravo! You have guessed it correctly!"
}

# Function call to start the game
guessGame
