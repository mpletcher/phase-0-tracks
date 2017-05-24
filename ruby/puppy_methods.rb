=begin
6.1 Introduction to Classes
Author: Marcos Pletcher, Erik Wotring
=end

# -----------------------------------
# Release 1: Declare an Initialize Method
# -----------------------------------

DOG_YEARS = 7

class Puppy
  # class method
  def initialize()
    puts "Initializing new puppy instance ...\n\n"
  end

  def fetch(toy)
    puts "I brought back the #{toy}!\n\n"
    toy
  end # close fetch

  # Add a speak method that takes an integer, and then prints "Woof!" that many times.
  def speak(barking_sound)

    # block
    barking_sound.to_i.times {|barking_sound| p "Woof!"}
  end

  # Add a roll_over method that just prints "*rolls over*".
  def roll_over
    puts "\n*rolls over*\n"
  end

  # Add a dog_years method that takes an integer (of human years) and converts that number to dog years, returning a new integer.
  # one human year is 7 dog years


  # add a trick

end # close main method

# -----------------------------------
# Object creates puppies
puppy =Puppy.new

# call class
puppy.fetch('ball')
puppy.speak(8)

# -----------------------------------
# Release 2: Write Your Own Class, and Experiment!
# -----------------------------------

