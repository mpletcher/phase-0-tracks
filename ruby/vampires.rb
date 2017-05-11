=begin
Assignment: 4.4 Solo Challenge: Control Flow Practice
Author: Marcos Pletcher
Email: pletcher.marcos@icloud.com
=end

puts "How many employees will be processed?"
number_employees = gets.chomp.to_i #stores the number of employees will be processed

number_turns = 0; # stores number of cycles; it starts at zero

while number_turns < number_employees
	puts "What is your name?"
	employee_name = gets.chomp.capitalize # capitalizes only the first letter of a string

	puts "How old are you?"
	age = gets.chomp.to_i

	puts "What year were you born?"
	year = gets.chomp.to_i
	
	puts "Our company cafeteria serves garlic bread. Should we order some for you? (Y or N)"
	galic_food = gets.chomp.downcase # makes every letter in a string lowercase

	puts "Would you like to enroll in the company’s health insurance? (Y or N)"
	health_insurance = gets.chomp.downcase # makes every letter in a string lowercase

	# Discover the correct age
	correct_age = Time.new.year - year # https://www.tutorialspoint.com/ruby/ruby_date_time.htm

		# Checks for Suspicious Allergies
		allergies = "" # Declare variable 
		while allergies != "done" || allergies != "sunshine"
			puts "Let us know please if you are allergic to anything. Additionally, type “done” when finished."
			allergies = gets.chomp

			if allergies == "sunshine"
				puts "Probably a vampire."
			elsif age < 120 && (health_insurance == "yes" || galic_food == "yes")
				puts "Probably not a vampire."
			elsif age > 120 && (health_insurance == "no" || galic_food == "no")
				puts "Probably a vampire."
			elsif age != correct_age && health_insurance == "no" || galic_food == "no"
				puts "Almost certainly a vampire."
			elsif employee_name == "Drake Cula" || employee_name == "Tu Fang"
				puts "Definitely a vampire."
			else
	    	puts "Results inconclusive."
			end 
		end
	num_cycles += 1
end
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."





