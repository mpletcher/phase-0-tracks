=begin
Assignment: 4.4 Solo Challenge: Control Flow Practice
Author: Marcos Pletcher
Email: pletcher.marcos@icloud.com
=end

puts "How many employees will be processed?"
number_employees = gets.chomp.t_i #stores the number of employees will be processed

number_turns = 0; # stores number of cycles; it starts at zero

while number_turns < number_employees
	puts "What is your name?"
	employee_name = gets.chomp.capitalize # capitalizes only the first letter of a string

	puts "How old are you?"
	age = gets.chomp.t_i 

	puts "What year were you born?"
	year = gets.chomp.t_i 

	puts "Our company cafeteria serves garlic bread. Should we order some for you? (Y or N)"
	galic_food = gets.chomp.downcase # makes every letter in a string lowercase

	puts "Would you like to enroll in the company’s health insurance? (Y or N)"
	health_insurance = gets.chomp.downcase # makes every letter in a string lowercase
end





