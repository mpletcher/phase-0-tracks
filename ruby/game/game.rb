=begin
6.7 Solo Challenge: A Game Class
Author: Marcos Pletcher
Application created in RubyMine, Repl.it, and tested in Terminal
=end

game class
  # att accessor
  # make input readable/ writable
 	  attr_accessor :entered_word, :your_attempt
  
  # define initialize constructor
  # pass an argument as parameter
  # create instance variables for entered content and attempts
    def initialize(items)
      @entered_word = items.downcase.split('')
      @attempts = 0
    end

  # define method that "hides" my word
  # iterates over it, give the length of it
  # used that qty display to lovely smily face (this is a good hint!!!)
    def put_word_under_rug
      qty_items = @entered_word
      blanks = ""
      @entered_word.length.times do |qty_items|
        blanks += "(▰˘◡˘▰) "
      end
      blanks
    end
  # loop quantity of letters


# user interface
  # prints greetings
  # prompt user to enter something
  	puts "Let's Play! (This game is better with 2 players!)"
  	puts "Enter a word, then your friend needs to tell us what word is that"
  	entered_word = gets.chomp
  	game = Game.new(entered_word)
  # WHILE attempts are less than all attempts
    while attempts < all_attempts
    puts "Attempts #{attempts + 1} / #{all_attempts}: What do you think your friend wrote here?"
    your_attempt = gets.chomp
  # show quantity of attempts and ask another player for letting us know what  thing you typed
  # IF his/her attempt is correct, say "Great! Good job.. you can read minds"
  # OTHERWISE, say "It's wrong. One more time."
  # let's set three attempts, after that finish the game

  #
end # close game