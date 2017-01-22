class Santa
	attr_reader :ethnicity, :age
	attr_accessor :age, :reindeer, :gender

	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		@age = 0
		reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	end

	def speak()
		puts "Ho, ho, ho! Happy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie!" 
	end
	
	def age
        @age += 1
      end
      
  	def celebrate_birthday
  		puts "This santa is #{age} years old"
  
  	
  
	def rand_genders
		genders = ['agender', 'female', 'bigender', 'male', 'female', 'gender fulid', 'N/A']
		gender = genders[rand(genders.length)]
	end
	
	def rand_ethnicity
		ethnicities = ['black', 'Latino', 'white', 'Japanese', 'prefer not to say', 'Mystical Creature (unicorn)', 'N/A']
		ethnicity = ethnicities[rand(ethnicities.length)]
	end
end


santas = Santa.new
santas.age
santas.age
santas.gender = "The gender that was agender"
puts "#{santas.gender} is now a female"
santas.speak

santas = []

ethnicities = ['black', 'Latino', 'white', 'Japanese', 'prefer not to say', 'Mystical Creature (unicorn)', 'N/A']

puts "Iterating through list to add gender and ethnicity ..."
genders.length.times do |i|
  santas << Santa.new()
  puts "Santas gender is #{genders[i]} and the ethnicity is #{ethnicities[i]} "
end
  


  