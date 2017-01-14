def next_vowel(word)
  vowels = ["a", "e", "i", "o", "u"]
  word = word.split('')
  word_new = word.map do |char|
    if vowels.include?(char)
      vowels.rotate(1)[vowels.index(char)]
    else
      char
    end
  end
  puts word_new.join
end
next_vowel('kosha')