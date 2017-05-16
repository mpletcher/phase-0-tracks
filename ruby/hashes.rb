=begin
5.2 Arrays and Hashes
Author: Marcos Pletcher

-------------Pseudocode -----------------
Prompt the user for his/her name, age, number of children, decor theme, 
If user inputs unvalid data, re-promt the user
Convert any user input to the appropriate data type
Prompt the user if any information needs to be changed
Prompt the user to enter the new value
Otherwise, print last information
=end

# Greetings
def greet(say_something_dependening_on_time)
  if say_something_dependening_on_time >= 00 && say_something_dependening_on_time <= 11
    puts "Good Morning. Welcome to your Decor Assistant!\n"
  elsif say_something_dependening_on_time >= 12 && say_something_dependening_on_time <= 16
    puts "Good Afternoon. Welcome to your Decor Assistant!\n"
  elsif say_something_dependening_on_time >= 17 && say_something_dependening_on_time <= 20
    puts "Good Evening. Welcome to your Decor Assistant!\n"
  else
    puts "Good Night. Welcome to your Decor Assistant!\n"
  end
end

# call greetings
greet(Time.new.hour)

# Prompt the user to enter his/her name
puts "Let me know please what is your name?"
name = gets.chomp.capitalize

# Prompt the user to enter the following information
# Convert any user input to the appropriate data type.
puts "How old are you?"
age = gets.chomp.to_i

# Convert any user input to the appropriate data type.
puts "How may children do you have?"
number_children = gets.chomp.to_i

puts "What kind of theme would you like to use?"
decor_theme = gets.chomp.capitalize

# Create hash
client_information = {
  name: "#{name}",
  age: age,
  number_children: number_children,
  decor_theme: "#{decor_theme}"
}