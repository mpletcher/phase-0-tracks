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

=begin
=begin6.5 Mandatory Pairing: Testing a Class with RSpec
Author: Marcos Pletcher


# ---------------
Release 0: Run Some RSpec Tests

1. test on terminal rspec -fd calculator_spec.rb
2. done
3. changed parameters of one method and got an error 
# ---------------
=end
=end