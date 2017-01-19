class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(numb)
  	n = 0
  	while n < numb
  		print "Woof! "
  	n += 1
  	end
  	puts ""
  end

  def roll_over()
  	puts "*rolls over*"
  end

  def dog_years(human_year)
  	dog_year = human_year / 7
  	puts dog_year
  end

  def jump()
  	puts "*JUMPY*"
  end

  def initialize()
  	puts "Initializing new puppy instance ..."
  end

end

puppy = Puppy.new
puppy.fetch("ball")
puppy.speak(3)
puppy.roll_over
puppy.dog_years(21)
puppy.jump


# PSEUDO CODE
# Define a class "Dancer"

# Initialize a instance class for Dancer

class Dancer

	def spin()
		p "Dancer spins "
	end

	def flip()
		p "Dancer flips "
	end

end


dancer = Dancer.new

flip = dancer.flip
spin = dancer.spin

array_moves = []
n = 0
while n < 50
	array_moves[n] = spin
	n += 1
	array_moves[n] = flip
	n += 1
end

p array_moves

array_moves.each do |moves|
	puts "#{moves} with style!"
end
