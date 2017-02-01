
#create an empty hash for user information

user_info = {}


# Prompt user for their information and save into hash

puts "What is your name?"
user_info[:name] = gets.chomp

puts "What is your address?"
user_info[:address] = gets.chomp

puts "What is your age?"
user_info[:age] = gets.chomp.to_i

puts "How many children do you have?"
user_info[:children] = gets.chomp

puts "Do you have a theme in mind? (y/n)"
user_info[:theme] = gets.chomp

puts "Do you have any pets? (y/n)"
user_info[:pets] = gets.chomp


puts "How many bedrooms do you have?"
user_info[:bedrooms] = gets.chomp.to_i
 
#Print the hash with user information 

puts "Here is all the client information:"
p user_info

#Let user update their input

puts "Would you like to update any of your inputs (y/n)?"
input = gets.chomp

if (input == "yes")
	puts "What would you like to update? (input one of the following: name, address, age, children, theme, pets, or bedrooms)"
	update = gets.chomp.to_sym
	puts "What would you like to update it to?"
	updated = gets.chomp
	user_info[update] = updated
else (input == "none")
	puts "Thank you!"
end
puts "Here are your answers with changes!"
p user_info





