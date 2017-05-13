=begin
-------------Pseudocode Encrypt Method-----------------
declare encrypt method 
set parameter "normal_word"
set variable "index" for loop
add while loop to process length of argument
if condition tests if letters are being typed, finds the next letter
Any space character should remain a space character
=end

def encrypt (normal_word)
    
    index = 0 # index
    while index < normal_word.length
        # use a letter diffent than abc
        if normal_word[index] == "z"
            # remove letter z
            normal_word[index] = normal_word[index].next.chop
        elsif 
            # if it's nil, we don't do anything
            normal_word[index] == " "
        else
            # otherwise change word position
            normal_word[index] = normal_word[index].next
        end
        # avoids loop to be infinite
        index += 1
    end
    # declares final word
    normal_word
end
# encrypt("abc")
# encrypt("zed")

=begin
-------------Pseudocode Decrypt Method-----------------
declare decrypt method 
set parameter "normal_word"
set variable "index" for loop
add while loop to process length of parameter
add letters of alphabet
if condition tests if letter are being typed, counts strings
Any space character should remain a space character

=end

def decrypt (normal_word)
  
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  s1 = 0 
  
  while s1 < normal_word.length
    # loops creates encoded value by indexing argument 
    my_decrypted_word = alphabet.index(normal_word[s1])
      # if my index would be the same as s1, dont do anything
      if normal_word[s1] == " "
      else 
        # otherwise, change this aforementioned value index for a prior letter
        normal_word[s1] = alphabet[my_decrypted_word-1]
      end
  
  s1 += 1
  end
  # declares final decrypted word
  normal_word
end

#decrypt("bcd")
#decrypt("afe")

=begin
-------------Pseudocode-----------------
promt the user to choose between two options
if user types a, promt the user to enter a password to be encrypted
puts encrypted password
if user types a, promt the user to enter a password to be decrypted
puts decrypted password
Otherwise, let him/her know it is not accepted
puts greetings
=end

puts "Would you like to decrypt or encrypt a password? ( Please, type 'a' for encrypt or 'b' for decrypt)"
user_choice = gets.chomp.downcase
