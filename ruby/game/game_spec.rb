=begin
6.7 Solo Challenge: A Game Class
Author: Marcos Pletcher
=end

require_relative 'game'

describe Game do 
	  it "has a writeable number" do
	  	Game.attempts = 34
	    expect(Game.attempts).to eq 34
	  end
end
