



user_data = {}
names = ''
address = ''
age = ''
kids = ''
theme = ''
bedrooms = ''


while 
puts "What is your name?"
input names = gets.chomp

puts "What is your address?"
address = gets.chomp

puts "What is your age?"
age = gets.chomp.to_i

puts "How many children do you have?"
kids = gets.chomp

puts "Do you have a theme in mind? (y/n)"
theme = gets.chomp


puts "How many bedrooms do you have?"
bedrooms = gets.chomp.to_i
 

puts "Here is all the information:"

user_data.hash.each { |key,value|
	puts "#{key}=> #{value}"

}

#user_data = {first:names, address:address, age:age, kids:kids, theme:theme, bedrooms:bedrooms}
#puts "#{user_data}"



