=begin
6.7 Solo Challenge: A Game Class
Author: Marcos Pletcher
=end

require_relative 'game'

describe Game do 
	  it "has a readable number" do
	    expect(Game.attempts).to eq 0
	  end
end
