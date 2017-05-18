=begin
5.5 Solo Challenge: Manipulating Strings with Iteration
Author: Marcos Pletcher
Application created on Repl.it, and tested in my Terminal 

-------------Pseudocode----------------
Prompt user to enter name (E.g.: real name: Felicia Torres)
Let the user to repeat it until he/she decifes to quit
Change all vowels to the next 
Change all consonants to the next 
Swap first for last names
exit
Prints the name 

=end
# create spy name
def create_spy_name(entered_name)
	all_vowels = ['a', 'e', 'i', 'o', 'u']

	# make sure entered content is downcase, split them, and reverse positions 
	new_alias = entered_name.downcase.split(' ').reverse # keeps blank space here, otherwise it doesnt work
	# use map! to mutate name
	new_alias.map! {|name_item| name_item.split('')}
	
	new_alias.map! do |name_item|
		name_item.map! do |vowel|

			if vowel == "z"
				vowel = "a"
			elsif change_vowels(vowel) == vowel
				vowel.next!
					if change_vowels(vowel) != vowel
		          		vowel.next!
					end # close nested if 
				vowel
			else 
				change_vowels(vowel)
			end # close if 
	end # close loop
	# returns a string created and capitalize first letter
	name_item.join('').capitalize
  end 
new_alias.join(' ') # keeps blank space here, otherwise it doesnt work
end # close method

# Change all vowels to the next 
def change_vowels(vowel)
	all_vowels = ['a', 'e', 'i', 'o', 'u']

	# block runs list
	all_vowels.length.times do |item|
		if vowel == all_vowels[item - 1]
			vowel = all_vowels[item]
			break
		end
	end
	vowel
end

#p create_spy_name("Felicia Torres")

#Prompt user to enter name (E.g.: real name: Felicia Torres)
#Let the user to repeat it until he/she decifes to quit

# create hash to user's inputs to be assigned 

my_hash = {
  new_alias: [],
  entered_name:[]
}

# while true, loop the user for name
temp_value = 0
while true
  puts "Please enter any name you want (Enter 'quit' to exit): "
  name = gets.chomp
  
  break if name == "quit"
  
  # push typed content into hashes and call method to create alias
  my_hash[:entered_name].push(name)
  my_hash[:new_alias].push(create_spy_name(name))
  temp_value += 1
end # close loop

puts "#{my_hash[:new_alias]} is actually #{my_hash[:entered_name]}"









