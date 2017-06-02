# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Per my investigation and research, require_relative works like require, except that it ignores the load path for the
# named file relative to the directory from which the invoking code was loaded. In addition, require relative is a convinient
# of accessing files in thwe same directory
# Major difference: require needs the whole directory path for the file
require_relative 'state_data'

# This detects the influenza virus in each state
class VirusPredictor


 # it runs every time a new instance on the class ia created
 # there are three arguments when created: state_of_origin, population_density, population
 # those three attributes areset as instance variables to the arguments
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # calls predicted_deaths and speed_of_spread methiods with the necessary arguments
  def virus_effects
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  # everything under private keyword cannot be directly called by the user
  private

  # it makes a prediction based on population density and ppopulation
  # conditional statement increases the speed based on the population and population density
  # --> refactor: these parameters are not necessary over here for passing arguments
  def predicted_deaths#(population_density, population, state)
    # predicted deaths is based on population/ density

    # ---------------------refactor-----------------------------
    number_of_deaths = 0
    nums_check = {200 => 0.4, 150 => 0.3, 100 => 0.2, 50 => 0.1}
    nums_check.each do |key, value|
      if @population_density >= key
        number_of_deaths = (@population * value).floor
        break
      else
        number_of_deaths = (@population * 0.05).floor
      end
    end
    # ---------------------refactor-----------------------------

    # ---------------------original-----------------------------
    # if @population_density >= 200
    #   number_of_deaths = (@population * 0.4).floor
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    # else
    #   number_of_deaths = (@population * 0.05).floor
    # end
    # ---------------------original-----------------------------

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # it shows how fast the virus can spread based on the density of the population
  def speed_of_spread(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
 
    nums_check = {200 => 0.5, 150 => 1, 100 => 1.5, 50 => 2}
    speed = 0.0
    nums_check.each do |key, value|
      if @population_density >= key
        speed += value
        break
      elsif @population_density < 50
        speed += 2.5
        break
      end
    end
    # ---------------------original-----------------------------  
    # speed = 0.0

    # if @population_density >= 200
    #   speed += 0.5
    # elsif @population_density >= 150
    #   speed += 1
    # elsif @population_density >= 100
    #   speed += 1.5
    # elsif @population_density >= 50
    #   speed += 2
    # else
    #   speed += 2.5
    end
   # ---------------------original-----------------------------
    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
STATE_DATA.each do |key, value|
  # p key 
  # p value
  #p VirusPredictor.new(key,value, )
  state_name = key
  state_name = VirusPredictor.new(state_name, value[:population_density], value[:population])
  state_name.virus_effects
end



=begin
  
rescue Exception => e
  
end
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
=
=end
#=======================================================================
# Reflection Section