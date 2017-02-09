class Word
  def select_word(wordlist)
    @word_to_guess = wordlist.sample
  end

  def draw_spaces
    puts "Word:"
    @word_length = @word_to_guess.gsub(/[a-zA-Z]/,"_")
    puts @word_length
    puts ""
  end

  def validate_letter(user_input)
    unless user_input.match(/[a-zA-Z]/)
      puts "Please enter letters only"
      guess
    end
  end

  def already_used
    @already_used = []
  end

  def validate_usedyet(user_input)
    if @already_used.include?(user_input)
      puts "you already used that letter!"
      guess
    else
      @already_used << user_input
    end
  end

  def number_of_guesses(guesses)
    @guesses = guesses
    puts "you have #{@guesses} guesses left"
    if @guesses == 0
      puts "You ran out of guesses! You lose! The word was #{@word_to_guess}!"
      exit
    end
  end

  def win_check
    if @letter_guess == @word_to_guess
      puts "Congratulations! You won!"
    else
      puts "You guess wrong! The word was #{@word_to_guess}!"
    end
  end

  def guess
    print "Guess a single letter (a - z) or the entire word:"
    @letter_guess = gets.chomp.downcase
    validate_letter(@letter_guess)
    if @letter_guess.length != 1
      win_check
    else
      validate_usedyet(@letter_guess)
      if @word_to_guess.include?(@letter_guess)
        @letter_count = @word_to_guess.count(@letter_guess)
        letter_location(@letter_count)
       else
        @guesses = @guesses - 1
        number_of_guesses(@guesses)
        guess
      end
    end
  end

  def letter_location(count)
    location = @word_to_guess.index(@letter_guess)
    location = location.to_i
    while count > 0
      @word_length[location] = @letter_guess
      location =  @word_to_guess.index(@letter_guess, location + 1)
      count = count - 1
    end
    if @word_length != @word_to_guess
      puts @word_length
      guess
    else
      win_check
    end
  end
end

words = ["biscuit", "muffin", "scone", "turnover", "cookie", "macaroon", "baklava", "pie", "strudel", "eclair", "cake", "tiramisu", "cupcake", "torte", "teacake", "tart", "flan", "bearclaw", "butter", "flour", "eggs", "chocolate", "vanilla", "cinnamon", "apple", "sugar", "pumpkin", "bacon", "milk", "cream", "syrup", "yeast", "cloves", "nutmeg", "ginger", "cornstarch", "applesauce", "nuts", "oatmeal", "cranberries", "molasses", "honey", "cocoa", "banana", "shortening"]
puts "Welcome to Hangman!"
puts ""
word = Word.new
word.select_word(words)
word.draw_spaces
word.number_of_guesses(8)
word.already_used
word.guess