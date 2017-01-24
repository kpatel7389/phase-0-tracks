# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# allows you to get access to the data in the file using the relative path
require_relative 'state_data'

class VirusPredictor
  attr_reader :population_density, :population
  #This method gives values to the specified attributes based on the parameters given 
  #for a new instances of the class
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  #This method calls the two methods at the same time
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  #This method determines the number of deaths in a state based on population density and total population size
  def predicted_deaths
    # predicted deaths is solely based on population density
    if population_density >= 200
      rate = 0.4
    elsif population_density >= 150
      rate = 0.3
    elsif population_density >= 100
      rate = 0.2
    elsif population_density >= 50
      rate = 0.1
    else
      rate = 0.05
    end

    number_of_deaths = (population * rate).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  #This method determines the speed the disease will spread based on population density
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.


    if population_density >= 200
      speed = 0.5
    elsif population_density >= 150
      speed = 1
    elsif population_density >= 100
      speed = 1.5
    elsif population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |key, value|
state = VirusPredictor.new(key, value[:population_density], value[:population])
state.virus_effects
end




/alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects/


#=======================================================================
# Reflection Section