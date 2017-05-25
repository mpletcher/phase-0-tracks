=begin
6.4 Modules
Author: Marcos Pletcher
=end

# -----------------------
# Release 1: Write a Simple Module
# -----------------------


# declare a module
module Shout
  # we'll put some methods here soon, but this code is fine for now!
  # ethods of standalone modules must be defined on the self keyword
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end
end

# declare a module
module Shout
  # we'll put some methods here soon, but this code is fine for now!
  # ethods of standalone modules must be defined on the self keyword
  def self.yelling_happily(words)
    words + "!!!" + " :)"
  end

end

p Shout.yelling_happily("Hello!")

class MyMother
  include Shout
end

class Me
  include Shout
end

# instancing
kathy = MyMother.new
p Shout.yell_angrily("Can you please call me?!")

marcos = MyMother.new
p Shout.yelling_happily("Yes!")