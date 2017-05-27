=begin
6.7 Solo Challenge: A Game Class
Author: Marcos Pletcher
=end

game class
  # att accessor
  # make input readable/ writable
 	  attr_accessor :entered_word, :your_attempt
  

  # define initialize constructor
    def initialize(items)
      @entered_word = items.downcase.split('')
      @attempts = 0
    end
  # pass an argument as parameter
  # create instance variables for entered content and attempts

  # define method that "hides" my word

  # loop quantity of letters


# user interface
  # prints greetings
  # prompt user to enter something
	puts "Let's Play! (This game is better with 2 players!)"
	puts "Enter a word, then your friend needs to tell us what word is that"
	entered_word = gets.chomp
	game = Game.new(entered_word)
  # WHILE attempts are less than all attempts
  # show quantity of attempts and ask another player for letting us know what  thing you typed
  # IF his/her attempt is correct, say "Great! Good job.. you can read minds"
  # OTHERWISE, say "It's wrong. One more time."
  # let's set three attempts, after that finish the game

  #
end # close game