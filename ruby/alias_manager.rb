def next_vowel(word)
  vowels = ["a", "e", "i", "o", "u"]
  word = word.split('')
  word_new = word.map do|char| 

    if vowels.include?(char)
      vowels.rotate(1)[vowels.index(char)]	
    else
    	char.next
    end
   end
  puts word_new.join
end
#next_vowel('Felicia Torres')


real_name = 0
    until ["quit"].include? real_name do
        puts "What is your name" 
        real_name = gets.chomp
    
    if real_name == "quit"    
        puts "The end" 
    else   
        puts next_vowel(real_name) 
    end
end 