# Create Class game



# Method to initialize and add instances
# input: word 
# steps: 
  # set # number of guesses to however many letters are in the word to guess
  # set guesses to default value
  # set an empty array the letters will be pushed into
  # set if the game is over to a boolean value
  # set an empty array to start out with blanks to fill in
# output: the attributes included in initialize

# Method to split the letters of the word to guess
# input: none
# steps: set the attribute of letters to equal the word user is guessing to .split("")
# output: an array of string of letters of the word being guessed

# Method to print the update of the letters guessed so far
# input: none
# steps: iterate through our letter array
	#IF the letter guessed is not included in the word
		#push "_" into the empty array
	#ELSE
		#push the letter into the array
# output: array

# Method to recieve feedback of your guesses
# input: letter guessed
# steps: IF the letter is included and print the letter guessed at the right index
		#ELSE Prints that the letter is not in the word and moves on to the next guess
# output: array

