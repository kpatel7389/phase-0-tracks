#Method to return the next vowel character
def secret_name(word)
vowels = ['a', 'e', 'i', 'o', 'u']
consonants = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z']

word = word.split('')

word_new = word.map do |letter|
  if vowels.include?(letter)
    vowels.rotate(1)[vowels.index(letter)]
  elsif consonants.include?(letter)
    consonants.rotate(1)[consonants.index(letter)]
  elsif letter == " "
    letter = " "
  else
    letter.next
  end
end
puts word_new.join
end

secret_name('Felicia Torres')
 
 




