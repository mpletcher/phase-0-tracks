=begin
6.4 Modules
Author: Marcos Pletcher
=end

# -----------------------
# Release 2: Mix in a Module
# -----------------------
module Flight
  def take_off(altitude)
    puts "Taking off and ascending until reaching #{altitude} ..."
  end
end

class Bird
  include Flight
end

class Plane
  include Flight
end

# drive code
bird = Bird.new
bird.take_off(800)

plane = Plane.new
plane.take_off(30000)