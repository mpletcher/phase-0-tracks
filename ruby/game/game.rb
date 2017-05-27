=begin
6.7 Solo Challenge: A Game Class
Author: Marcos Pletcher
Application created in RubyMine, Repl.it, and tested in Terminal
This was a simple but a funny game
=end

class Game
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


  # user interface
  # prints greetings
  # prompt user to enter something
  	puts "Let's Play! (This game is better with 2 players!)"
  	puts "Enter a word, then your friend needs to tell us what word is that:"

  # instacing
  	entered_word = gets.chomp
  	game = Game.new(entered_word)
  # WHILE attempts are less than all attempts
  # show quantity of attempts and ask another player for letting us know what  thing you typed
    while attempts < all_attempts
      puts "Attempts #{attempts + 1} / #{all_attempts}: What do you think your friend wrote here?"
      your_attempt = gets.chomp

      # IF his/her attempt is correct, say "Great! Good job.. you can read minds"
      # BREAK this game
       if your_attempt == entered_word
        puts "Yeahhhh!!!!! You rock!"
        break

      # IF attempts are the same, say "You are typing the same thing. Try again."
        elsif all_attemted_stuff.include?(your_attempt)
          puts "You are typing the same thing. Try again."
        attempts -= 1

      # IF attempt true, shovel it into list
        elsif entered_word.include?(your_attempt)
          all_attemted_stuff << your_attempt
          index_of_this_items = 0
      # let's set three attempts, after that finish the game
              # while the index of these items is les than entered content
              while index_of_this_items < entered_word.length
                  # IF player's attempts is the same thing
                  # let them know saying this "You got it here ..."..."
                  if your_attempt == entered_word[index_of_this_items]
                    current_progress[index_of_this_items] = entered_word[index_of_this_items]
                    puts "You got it here #{index_of_this_items + 1}"
                    puts "#{current_progress}"
                  end # ends if else
              index_of_this_items += 1
              end # ends while
 
 
        # OTHERWISE, say "It's wrong."
        else
          puts "It's wrong!"
        end 
        attempts += 1
      end
      
      if your_attempt == entered_word
      puts "Great! Good job.. you can read minds ＼(^-^)／"
    # OTHERWISE, show my bored face"
    else
      puts "(⌣_⌣”)"
    end

end # close game