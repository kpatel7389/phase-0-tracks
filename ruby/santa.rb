class Santa

	def speak()
		puts "Ho, ho, ho! Happy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie!" 
	end

	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
		puts "Intializing Santa instance..."
	end

	def 
		
end


santas = []
genders = ['agender', 'female', 'bigender', 'male', 'female', 'gender fulid', 'N/A']
ethnicities = ['black', 'Latino', 'white', 'Japanese', 'prefer not to say', 'Mystical Creature (unicorn)', 'N/A']

puts "Iterating through list to add gender and ethnicity ..."
genders.length.times do |i|
  santas << Santa.new(genders[i], ethnicities[i])
  puts "Santas gender is #{genders[i]} and the ethnicity is #{ethnicities[i]} "
end

santa.speak
santa.eat_milk_and_cookies("Chocolate Chip")

