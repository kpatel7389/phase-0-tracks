#Method to return the next vowel and consonant character
def secret_name(word)
vowels = ['a', 'e', 'i', 'o', 'u']
consonants = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z']
 #Change the string into an array
word = word.split('')
#iterate through each letter of the string
word_new = word.map do |letter|
  #if letter includes a vowel then change to the next vowel
  if vowels.include?(letter)
    vowels.rotate(1)[vowels.index(letter)]
  #if letter includes consonant then change to the next consonant
  elsif consonants.include?(letter)
    consonants.rotate(1)[consonants.index(letter)]
  #if there is a space, keep it a space
  elsif letter == " "
    letter = " "
  else
    letter.next
  end
end
#convert array back to string
 word_new.join
end

#Driver Code
#secret_name('Felicia Torres')
 
 
name_list = {}
real_name = ''

loop do
  puts "Enter first and last name. Type 'quit' when done"
  real_name = gets.chomp
  if real_name == 'quit' || real_name == ''
    break
  end
 name_list[real_name] = secret_name(real_name)
end

puts 'Here is the list of your alias names!'
name_list.each do |name, fake_name|
  puts "#{name} is also known as #{fake_name}!"
end


