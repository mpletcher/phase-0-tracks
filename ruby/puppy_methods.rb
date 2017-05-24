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
  # it takes an integer as parameter and prints woof that integer times
  def speak(barking_sound)

    # block takes an integer and repeats that Woof!
    barking_sound.to_i.times { |barking_sound| p "Woof!"}
  end

  # Add a roll_over method that just prints "*rolls over*".
  def roll_over
    puts "\n*rolls over*\n"
  end

  # Add a dog_years method that takes an integer (of human years) and converts that number to dog years, returning a new integer.
  # it takes an integer as parameter, multiplies that value times 7 (general dog' age comparison)
  def dog_years(age)
    p age.to_i * DOG_YEARSs
  end

  # add a trick
  #it takes an integer as parameter and god barks on command
  def trick(bark_on_command)
    # block takes an integer and dog barks on command
    bark_on_command.to_i.times { |bark_on_command| p "barks..barks..barks!"}
  end

end # close main method

# -----------------------------------
# Object creates puppies
#puppy =Puppy.new
# call class
#puppy.fetch('ball')
#puppy.speak(9)
#puppy.roll_over
#puppy.dog_years(5)
#puppy.trick(2)

# -----------------------------------
# Release 2: Write Your Own Class, and Experiment!
# -----------------------------------
# a class to classify wizards
# a constructor initialize holds two instance variables for our wizards
# constants of magic

LEVEL1 = "Physical sensitivity to subtle energy."
LEVEL2 = "Extra physical sensitivity to subtle energy."
LEVEL3 = "Extra-dimensional awareness."

# Global variables
$greetings = puts "Welcome!\n\n"

# create a class
class Wizards
  # constructor initialize
  def initialize
    puts "Let's create our list of powerful wizards.\n\n"
  end


  # loop 50 times
  array = []

  50.times do
    wizards = Wizards.new
    array << wizards
  end

  # .each
  def magical_powers
    list_of_powers = ['telepathy','teleportation','levitation','healing']

    list_of_powers.each do |item|
      p "List of Powers: #{item}!"
    end
  end

  # change normal name to secret name
  def increasing_powers

    list_of_powers = ['telepathy','teleportation','levitation','healing']

    list_of_powers.map! do |item|
      'Increasing ' + item + ' power. '
    end
    p list_of_powers.join
  end

  def inspect_power(experience)

    case experience
      when 0 .. 20
        puts "\n#{experience} years - your level of power is: #{LEVEL1}\n\n"
      when 20 .. 70
        puts "\n#{experience} years - your level of power is: #{LEVEL2}\n\n"
      when 70 .. 200
        puts "\n#{experience} years - your level of power is: #{LEVEL3}\n\n"
      else
        puts "\nThis program cannot identify your level of power.\n\n"
    end

  end # ends inspect


end # ends method

# dont have to re-type the whole thing
$greetings

# Create wizard objects
wizard = Wizards.new


# call class
wizard
wizard.magical_powers
wizard.inspect_power(20)
wizard.increasing_powers


