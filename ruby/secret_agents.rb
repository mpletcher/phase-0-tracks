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

