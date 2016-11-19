# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.


# EXPLANATION OF require_relative
# require_relative-  inports file from same root directory.

#require - used for importing gems and librarys.

require_relative 'state_data'


class VirusPredictor
 # sets variables for any instance of this class, Requires 3 parm's
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
# exicuting the predicted_deaths and speed_of_spread methods
  def virus_effects
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end
  # private - private methods can only be called
  # in the condext of the current object.
  private
 # 1. exicutes a conditional based on population density.

 # 2. set the number of deaths to a rounded percentages of the population based on population_density

 # 3. returns print a string with estimations of the number of deaths for a given state

  def predicted_deaths(population_density, population, state)
    # predicted deaths is solely based on population density
  def death_percentage(num)
    number_of_deaths = (@population * num).floor
  end

    if @population_density >= 200
      death_percentage(0.4)
    elsif @population_density >= 150
      death_percentage(0.3)
    elsif @population_density >= 100
      death_percentage(0.2)
    elsif @population_density >= 50
      death_percentage(0.1)
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  # 1. exicutes a conditional based on population density.
  # 2. sets the speed of spread in relation to population density

  # 3. returns a string that will print how fast the virus will spread
  def speed_of_spread(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
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

def all_50_states(state_data)
  state_data.each do |state, state_info|

    state = VirusPredictor.new(state, state_info[:population_density],state_info[:population] )

    state.virus_effects
  end
end

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects


#=======================================================================
# Reflection Section

all_50_states(STATE_DATA)