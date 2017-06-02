=begin
#==========================================
GPS 3.1 - Ruby
I worked on this challenge [by myself, with: Dayne Beck].
We spent [#] hours on this challenge.
#==========================================
=end

 #Virus Predictor

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
 # those three attributes are set as instance variables to the arguments
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # calls predicted_deaths and speed_of_spread methiods with the necessary arguments
  # --> refactor: these parameters are not necessary over here for passing arguments - avoid DRY
  def virus_effects
    predicted_deaths#(@population_density, @population, @state)
    speed_of_spread#(@population_density, @state)
  end

  # everything under private keyword cannot be directly called by the user
  private

  # it makes a prediction based on population density and ppopulation
  # conditional statement increases the speed based on the population and population density
  # --> refactor: these parameters are not necessary over here for passing arguments - avoid DRY
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
  # --> refactor: these parameters are not necessary over here for passing arguments - avoid DRY
  def speed_of_spread#(population_density, state) #in months
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
    # end
   # ---------------------original-----------------------------
    puts " and will spread across the state in #{speed} months.\n\n"

  end
end

#==========================================

# DRIVER CODE
 # initialize VirusPredictor for each state
STATE_DATA.each do |key, value|
  # p key 
  # p value
  #p VirusPredictor.new(key,value, )
  state_name = key
  state_name = VirusPredictor.new(state_name, value[:population_density], value[:population])
  #state_name = VirusPredictor.new(state_name, STATE_DATA[state_name][:population_density], STATE_DATA[state_name][:population])
  state_name.virus_effects
end


=begin
---------------------original-----------------------------  
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
---------------------original-----------------------------  
=end


=begin
#==========================================
# Reflection Section
#==========================================
**What are the differences between the two different hash syntaxes shown in the state_data file?**

- This nested hash has a string for keys and its value has symbols with quotes
- It leads to the values(hashes)

**What does require_relative do? How is it different from require?**

- Per my investigation and research, require_relative works like require, except that it ignores the load path for the
named file relative to the directory from which the invoking code was loaded. it basically This statement essentially
reads/loads the data from the file into this location of the program. On the other hand, Require is a built-in method that gives access to different libraries. When you use require to load a file, you are usually accessing functionality that has been properly installed, and made accessible, in your system.

- Major difference: require needs the whole directory path for the file

**What are some ways to iterate through a hash?**
- Using .each do |key, value|, we can iterate properly
-  Additionally, we can use a .each_pair method

**When refactoring virus_effects, what stood out to you about the variables, if anything?**

- The population density name was redundant, we think we should name that differently to make the code more readable (avoid DRY)
- In general, variables fit good in this program

**What concept did you most solidify in this challenge?**
- I was able to cement the following concepts: 

1. solid idea of Don't Repeat Yourself (DRY) 
2. accuracy in how to accurately access distinctive parts of the hash
3. straightforward way of manipulating classes
4. better grasp of knowledge about Require and Require_relate
=end