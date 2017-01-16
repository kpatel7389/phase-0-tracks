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
new_arr = []
    until ["quit"].include? real_name do
        puts "What is your name" 
       real_name = gets.chomp
     

        if real_name != "quit"
        	next_vowel(real_name)
        else
        	break
        end
        new_arr.push(real_name)
    end
        puts new_arr

       
 




