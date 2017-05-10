puts "What is the hamster's name?"
name = gets.chomp

puts "How loud is this hamster a night? (on a scale of 1 to 10, 10 being the loudest)"
sound = gets.chomp.to_i

puts "What color is this hamster fur?"
color = gets.chomp

puts "Can this hamster be adopted? (Yes or No)?"
adoption = gets.chomp

puts "How old is this hamster? (estimated age)"
age = gets.chomp

# Identify what age was entered
if age == "" # this means blank 
	age = nil
else
	age = age.to_i
end

# Print the information about our hamster
puts "Animal Identification:"
puts "Hamster's name: #{name}"
puts "Hamster's volume level is #{sound}"
puts "Hamster's fur color is #{color}"
puts "Hamster's estimated age is #{age}"

# Identify is this hamster can be adopted
if adoption == "Yes" || adoption == "yes" || adoption == "Yeah"
	puts "#{name} can be adopted."
else
	puts "#{name} cannot be adopted." # Interpolation
end