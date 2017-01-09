puts What is your name?
vampire_name = gets.chomp

puts How old are you? What year were you born in?
age = gets.chomp

puts Our company cafeteria serves garlic bread. Should we order you some?
garlic = gets.chomp

puts Would you like to enroll the company’s health insurance?
insurance = gets.chomp


garlic= true
vampire_name = true
insurance = true
age = true

if #{age} && #{garlic} || #{insurance} = true 
	puts "Probably not a vampire."
elsif #{age} && #{garlic} && #{insurance} = false
	puts "Almost certainly a vampire"
else 
	puts "Proabaly a vampire"

end 


if #{vampire_name} = "Drake Cula" || "Tu Fang"
	puts "Defintely a vampire"
else
	"Results inconclusive"

end 

