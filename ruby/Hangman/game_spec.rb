require_relative 'game'

 

 describe Hangman do
 	let(:game) {Hangman.new('apple')}

 it "lets the user know if the letter is in the word or not" do
 	expect(game.letter_guess('l')).to be true
 end

 it "lets the user know if the letter is not in the word" do
 	expect(game.letter_guess('d')).to be false
end

it "spilts the letters of the word into an array of strings"
	expect(game.letters).to eq ['a', 'p', 'p', 'l', 'e']
end

end





