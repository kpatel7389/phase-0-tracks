class Santa

	def speak()
		puts "Ho, ho, ho! Happy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie!" 
	end
	
	def age
        puts "The santa" + " is now #{@age} years old."
        @age = @age
        oneYearPasses
      end
      
  	def oneYearPasses
        if @age >= 0
          @age = @age + 1
        end
  	
  	
  	def gender
    @gender
  	end
  
	def gender=(new_gender)
	  @gender = new_gender
	end

	def initialize()
		@gender = ''
		@ethnicity = ''
		@age = 0
	end
	
	def ethnicity
	  @ethnicities
	end
end

reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]

santas = Santa.new
santas.age
santas.age
santas.gender = "The gender that was agender"
puts "#{santas.gender} is now a female"
santas.speak

santas = []
genders = ['agender', 'female', 'bigender', 'male', 'female', 'gender fulid', 'N/A']
ethnicities = ['black', 'Latino', 'white', 'Japanese', 'prefer not to say', 'Mystical Creature (unicorn)', 'N/A']

puts "Iterating through list to add gender and ethnicity ..."
genders.length.times do |i|
  santas << Santa.new()
  puts "Santas gender is #{genders[i]} and the ethnicity is #{ethnicities[i]} "
end
  


  