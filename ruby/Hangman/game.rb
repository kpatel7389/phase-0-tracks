class Hangman

	def initialize(word)
		@number_of_guesses = word.length
		@word = word
		@is_over = false
		@word_status_array
	end

	def letters 
		@letters = @word.downcase.split('')
		@letters
	end

	def word_status
		@letters.each do |letter|
			if letter != " "
				@word_status_array.push("_")
			else 
				@word_status_array.push(" ")
			end
		end
	end

	def letter_guess(letter)
		if @guess.include?(letter)
			puts "You already guessed that letter!"
		elsif @letters.include?(letter)
			correct_letter = @letters.each.with_index.find_all{ |a,i| a == "#{letter}"}.map{ |a,b| b }
			correct_letter.each do |index|
				@word_status_array[index] = letter
			end

		else
			puts "The #{letter} is not found. Try Again!"
			@guesses += 1
			@guess.push(letter)
		end
	end
end



#Driver Code 
# word = 'apple'
# game = Hangman.new(word)
# game.letters
# game.letter_guess('l')


#user interface

# puts "Player 1: Think a word you would like Player 2 to guess"
# puts "Player 2: You will have as many guesses as there are letters in the word Player 1 chooses"
# puts "-----------------------------------"

# puts " "
# puts " "
# puts " "

# puts "Player 1: Type a word for Player 2 to guess containing only letters. (a-z)"

# word = gets.chomp
# game = Hangman.new(word)
# game.letters
# game.update
# p game.array
# until game.letters == game.array|| game.guesses >= game.num_of_guesses
#   puts "Guess a letter. #{game.num_of_guesses - game.guesses} guess(es) remaining"
#   game.guess(gets.chomp)
#   p game.array
# end
# if game.letters == game.array
#   puts "Great job!! I knew you could do it!"
# end
# if game.guesses >= game.num_of_guesses
#   puts "Hahaha! I knew you wouldn't get it!"
# end


