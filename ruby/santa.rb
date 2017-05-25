=begin
6.3 Attributes
Author: Marcos Pletcher
=end

# Add state to classes
class SantaCon
  
  # Constructor
  def initialize
    puts "Initializing Santa instance ..."
  end

  def speak
    puts "\nHo, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(snickerdoodle)
    puts "\nThat was a good #{snickerdoodle}!"
  end

end


# Driver code
# instantiating
santa = SantaCon.new
santa.speak
santa.eat_milk_and_cookies("ginger cookie")

# call class
SantaCon