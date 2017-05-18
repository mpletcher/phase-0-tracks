=begin
5.3 Mandatory Pairing: Iteration
Author: Marcos Pletcher, Tyler Kawabata
=end

# ---------------------------------
# Release 0: Explore Blocks
# Use the .times Method
# ---------------------------------
2.times { p "Welcome!"}
# ---------------------------------
# Write Your Own Method That Takes a Block
# print out a status message before and after running the block
# ---------------------------------
def ask_for_name
  puts "What's your name?"
  user_name = gets.chomp.capitalize
  puts "\nName entered: #{user_name}"
  yield
  #block  
end
ask_for_name {puts "Nice to meet you!"}

# ---------------------------------
# Release 1: Use each, map, and map!
# ---------------------------------
# each
puts "\n ------------------"
# A list of names
names = [ "Fred", "Tiago", "Jim" ]

names.each do|l|
  p "Hello #{l}"
end

# map (items need to be enumerable)
puts "\n ------------------"
array = []
array.push(1,2,3)

array.map { |n| n * n } # [1, 4, 9]
p array

# map! (Change the original array)
puts "\n ------------------"
names = ["marcos", "tom"]

names.map! {|item| item.capitalize} # ["Marcos", "Tim", "Chris"]
p names
# ---------------------------------
# Release 2: Use the Documentation (Do the thing)
# ---------------------------------

# Declare Array and Hash
# create a hash
my_residence = {
  location: "Rochester",
  state: "New York",
  population: 210565
}

my_residence2 = {
  location: "Rochester",
  state: "New York",
  population: 210565
}

# create an array
array2 = [2, 4, 3, 4, 5]

puts "\n ------------------"
# 1. A method that iterates through the items, deleting anything
array2.delete_if do |x|
  x < 5
end 
p array2

puts "\n ------------------"
array3 = [2, 4, 3, 4, 5, 6]
# 2. A method that filters a data structure for only items that do satisfy a certain condition
array3.select! do |x|
  x.odd?
end
p array3

puts "\n ------------------"
# 3. A different method that filters a data structure for only items satisfying a certain condition 
p my_residence.keep_if {|key, value| key == :location}

puts "\n ------------------"
# 4. A method that will remove items from a data structure until the condition in the block evaluates to false, then stops
p my_residence2.delete_if {|key, value| key == :population}











