
#Define the method encrypt
#method that advances every letter of a string to one letter forwards

def encrypt(code)
	i = 0
	#declare empty string we will add to
	output = ""
	#loop over the string's letters
	while i < code.length
		 letter = code[i].next
		 if letter == "aa" 
		 	letter = "a"
		 end
		 output = output + letter
		i += 1	
	end
	puts output
end

#encrypt("swordfish")

#Define the method decrypt
#method that reverses the process above
def decrypt(codes)
	i = 0
	#declare empty string we will add to
	output = ""
	str = "abcdefghijklmnopqrstuvwxyz"
	#loop over the string's letters
	while i < codes.to_s.length
		letter = str[str.index(codes[i])-1]
		output = output + letter
		i += 1	
	end
	puts output
end

#decrypt("afe")

#This code works because decrypt is using the output of encrypt as an argument.
#decrypt(encrypt("swordfish"))

puts "Would you like to encrypt or decrypt your password?"
which_method = gets.chomp

puts "What is your password?"
password = gets.chomp

if which_method == "encrypt" 
	 encrypt(password)
else 
	 decrypt(password)
end









