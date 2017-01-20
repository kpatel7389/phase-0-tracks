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
		
end

santa = Santa.new 

santa.speak
santa.eat_milk_and_cookies("Chocolate Chip")
