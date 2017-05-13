=begin
Assignment: 4.4 Solo Challenge: Control Flow Practice
Author: Marcos Pletcher
Email: pletcher.marcos@icloud.com
=end

puts "How many employees will be processed?"
number_employees = gets.chomp.to_i #stores the number of employees will be processed

until number_employees == 0

	# capitalizes only the first letter of a string
	puts "What is your name?"
	employee_name = gets.chomp.capitalize 

	puts "How old are you?"
	age = gets.chomp.to_i

	puts "What year were you born?"
	year = gets.chomp.to_i
	
	# makes every letter in a string lowercase
	puts "Our company cafeteria serves garlic bread. Should we order some for you? (Y or N)"
	galic_food = gets.chomp.downcase 

	# makes every letter in a string lowercase
	puts "Would you like to enroll in the company’s health insurance? (Y or N)"
	health_insurance = gets.chomp.downcase 
	
	puts "what are you allergic to? Please, type 'done' when finished."
    allergies = gets.chomp
    
	# Discover the correct age
	correct_age = Time.new.year - year # built-in method for getting time. Source: https://goo.gl/68Q8SY

	# Checks for Suspicious Allergies
	while allergies != "done"
	  if allergies != "sunshine"
    puts "Could you please let us know if you are allergic to something? Type 'done' when finished."
    allergies = gets.chomp
    # break if statement. Source: https://goo.gl/RMWavZ
    else
      break if allergies == "sunshine" 
    end
  end  
  
  if allergies == "sunshine" 
    puts "Probably a vampire"
	elsif age < 120 && (health_insurance == "y" || galic_food == "y")
			puts "Probably not a vampire."
	elsif age > 120 && (health_insurance == "n" || galic_food == "n")
			puts "Probably a vampire."
	elsif age != correct_age && health_insurance == "n" || galic_food == "n"
			puts "Almost certainly a vampire."
	elsif employee_name == "Drake Cula" || employee_name == "Tu Fang"
			puts "Definitely a vampire."
	else
	    puts "Results inconclusive."
	end 
	# prevents loop to be infinite
	number_employees -= 1 
end
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
