# Virus Predictor

# I worked on this challenge [by myself, with: David Hogan].
# We spent [1 hr and 15mins] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative starts looking in the directory of the file where it is being called
# require starts looking at predefined points for the required file
#
#
require_relative 'state_data'

class VirusPredictor
  # Intiializes  3 values of each instance of VirusPredictor and stores the values in
  # instance variables.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  # calling the two methods predicted_deaths and speed_of_spread one after another.
  def virus_effects
    # predicted_deaths(@population_density, @population, @state)
    # speed_of_spread(@population_density, @state)
    predicted_deaths
    speed_of_spread
  end

  private

  def predicted_deaths
    # predicted deaths is solely based on population density
    # based on the value of population_density, assigns a value to population and prints
    # number_of_deaths in that specific state.
    
    if @population_density >= 200
      multiplier = 0.4
    elsif @population_density >= 150
      multiplier = 0.3
    elsif @population_density >= 100
      multiplier = 0.2
    elsif @population_density >= 50
      multiplier = 0.1
    else
      multiplier = 0.05
    end
    number_of_deaths = (@population * multiplier).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    # takes population_density and state and depending on the value of the population_density
    # it predicts the speed of the virus in number of months.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each do |key,value| 
  virus_data = VirusPredictor.new(key, value[:population_density], value[:population])

  virus_data.virus_effects
  
end




#=======================================================================
# Reflection Section

# String key can be used with a hash rocket to declare key/value pair
# and can set a key to a symbol using a colon

# Require relative looks for a file in the local directory while require will search for a file
# in any directory specified

# A few ways to iterate through a hash is using .map or .each method also while loop with a counter

# The attributes were already defined so it was redundant to use as parameters to the method

# Knowing what private method is and how it can be helpful when you don't want the user to modify it


