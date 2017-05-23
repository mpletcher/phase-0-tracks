=begin
6.1 Introduction to Classes
Author: Marcos Pletcher


SPECIES ------------------------
Puppy

CHARACTERISTICS ----------------
Name: varies
Trait: varies
Color: varies
age: varies

BEHAVIOR -----------------------
Jump
Dig
Lick
Eat
Bark
Sleep

=end

# Create a class
class Puppies
  # class method
  def initialize(name, breed, trait, color) # arguments
    # instance variables
    @name = name
    @breed = breed
    @trait = trait
    @color = color
  end # ends class method

  # method prints those instance methods
  def about_puppies
    puts "#{@name} is a #{@breed} puppy. He is #{@trait} and his color is #{@color}.\n"
  end

  # Global variables
  $puppy_info = puts "Thinking about adopting a new family member? Below, list of puppies available for adoption: \n\n"

end

# Object creates puppies
puppy1 = Puppies.new("Dave","Rottweiler", "confident", "black")
puppy2 = Puppies.new("Scott","Collie", "protective", "yellow")
puppy3 = Puppies.new("Mike","Golden Retriever", "happy", "orange")
puppy4 = Puppies.new("Lili","German Shorthair", "nervous", "shades from red to gold")
puppy5 = Puppies.new("Tom","German Shepherd", "dominant", "Black and Silver")

# call class
puppy1.about_puppies
puppy2.about_puppies
puppy3.about_puppies
puppy4.about_puppies
puppy5.about_puppies

# dont have to re-type the whole sentence
$puppy_info