class Santa
   attr_reader  :ethnicity , :age
   attr_accessor :age, :reindeer, :gender
 
 
   def initialize(gender, ethnicity)
     puts "Initializing Santa instance now..."
    
     @gender = gender
     @ethnicity = ethnicity
     @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
     @age = 0
   end  
  
  	def celebrate_birthday
 		  @age += 1  
 	end

 	def santas_age
 		puts "This santa is  #{@age} years old."
 	end


	def speak
		puts "Ho, ho, ho! Happy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie!" 
	end

	def get_mad_at(reindeer)
 	  @reindeer_ranking.insert(-1, 'Vixen').uniq
 	  p @reindeer_ranking
 	  puts "#{reindeer} knows what he did!"
 	  end
end
  
  	
 	def rand_gender
     genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
     gender = genders[rand(genders.length)]
 	end
	
	 def rand_ethnicity
     ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
     ethnicity = ethnicities[rand(ethnicities.length)]
 	end


 santas = []
  4.times do |a|
    santa = Santa.new(rand_gender, rand_ethnicity,)
    santa.age = rand(140)
    
 
   puts "#{santa.speak}"
   puts "#{santa.santas_age}"
   puts "This Santa ##{a+1} attributes are:"
   puts "This Santa's Age: #{santa.age}"
   puts "This Santa's Gender: #{santa.gender}"
   puts "This Santa's Ethnicity: #{santa.ethnicity}"
   puts "#{santa.eat_milk_and_cookies("snickerdoodle")}"
   puts "#{santa.get_mad_at("Vixen")}"
  
 end


  