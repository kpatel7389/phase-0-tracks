class Hangman

	def initialize(word)
		@number_of_guesses = word.length
		@word = word
		@is_over = false
	end

	def letters 
		@letters = @word.downcase.split('')
		@letters
	end
end

word = 'apple'
game = Hangman.new(word)
game.letters

