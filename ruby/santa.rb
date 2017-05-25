=begin
6.3 Attributes
Author: Marcos Pletcher
=end

# Add state to classes
class SantaCon

  attr_reader :ethnicity
  attr_accessor :age, :gender

  # Constructor
  def initialize(gender, ethnicity)
    puts "Initializing Santa instance ..."

    # instance variables
    @age        = 0
    @gender     = gender
    @ethnicity  = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  end

  def speak
    puts "\nHo, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(snickerdoodle)
    puts "\nThat was a good #{snickerdoodle}!"
  end

  # age Santa by one year.
  def celebrate_birthday
    puts "Happy birthday Santa!"
    @age +=1
  end

=begin
  # getter
  def age
    @age
  end

  # getter
  def ethnicity
    @ethnicity
  end

  # setter
  def gender=(value)
    @gender = value
  end
=end

  def get_mad_at(reindeer)
    if @reindeer_ranking.include?(reindeer) == true
      @reindeer_ranking.delete(reindeer)
      @reindeer_ranking.push(reindeer)
    else
      puts "I don't know that reindeer!"
    end
  end

end # ends class


example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "N/A"]


# Randomly creates santas with different genders and ethnicities
80.times do
  santa = SantaCon.new(example_genders.sample, example_genders.sample)
  santa.age = rand(0 ... 140)
  p "Santa is a  #{santa.ethnicity} #{santa.gender} person who is #{santa.age} years old."
end


# Driver code
# instantiating
#santa = SantaCon.new("male", "white")
#santa.speak
#santa.eat_milk_and_cookies("ginger cookie")

# --------------------------
# call class
#SantaCon

# --------------------------
# puts "#{santa.age}"
# puts "#{santa.ethnicity}"

# --------------------------




