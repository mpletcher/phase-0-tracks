=begin6.5 Mandatory Pairing: Testing a Class with RSpec
Author: Marcos Pletcher, Garima Jain
=end


# our calculator should ...
# add two integers and return an integer
# subtract two integers and return an integer
# multiply two integers and return an integer

# RSpec
# 'describe' block for each group of tests  
  # 'it' block for each individual test
    # expect(<YOUR CODE>).to eq <RESULT>

require_relative 'calculator'

describe Calculator do
  let(:calculator) { Calculator.new }

  it "adds two integers" do
    expect(calculator.add(3,4)).to eq 7
  end

  it "subtracts two integers" do
    expect(calculator.subtract(7,1)).to eq 6
  end

  it "multiplies two integers" do
    expect(calculator.multiply(2,3)).to eq 6
  end
end

=end
=begin
=begin6.5 Mandatory Pairing: Testing a Class with RSpec
Author: Marcos Pletcher


# ---------------
Release 0: Run Some RSpec Tests

1. test on terminal rspec -fd calculator_spec.rb
2. done
3. changed parameters of one method and got an error 
# ---------------

# ---------------
Release 2: Research on Your Own

1. Are there any handy RSpec cheat sheets out there?
https://www.anchor.com.au/wp-content/uploads/rspec_cheatsheet_attributed.pdf
http://www.rubypigeon.com/posts/rspec-expectations-cheat-sheet/

What observations can you make from skimming them?
- there is a logic way of testing our code
- to fill this gap by collecting most of the "best practices" that other developers learn through years of experience.

2. Where is the RSpec documentation?
in our computer and on the Internet
http://rspec.info/documentation/
http://www.rubydoc.info/gems/rspec-core

3. What are other RSpec matchers available aside from eq?
predicate, all, cover, include ..
https://relishapp.com/rspec/rspec-expectations/docs/built-in-matchers/be-matchers

4. Can you find any free RSpec tutorials or in-depth resources that might be helpful to bookmark?
https://semaphoreci.com/community/tutorials/getting-started-with-rspec
https://code.tutsplus.com/tutorials/ruby-for-newbies-testing-with-rspec--net-21297
# ---------------
=end
