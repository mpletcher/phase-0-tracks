# Pseudocode for GPS 2.2

# Method to create a list
# input: string of items separated by spaces
# steps:
# Takes string through input.
# Separate input with spaces and store as an array.
# Create a new hash and transfer array data into new hash.
# Set default quantities for each item to 1.
# Print list to the console.
# output: Hash

def generate_list(string_of_items)
  grocery_list={}
  default_value=1
  items=string_of_items.split(' ')
  items.each do |item|
    #Transfer items into hash
    grocery_list[item]=default_value
    end
  return grocery_list
  print(grocery_list)
end

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
# Method takes three parameters.
# It adds the item into the list and assign the quantity to one.
#Print Updated list
# output: Return the list (hash)

def add_item(list,name,quantity=1)
  list[name]=quantity
  return list
end

# Method to remove an item from the list
# input: list, item name
# steps:
#Method will take in two parameters.
#Through build in method it will remove one item from the list that is called.
#Print updated list
# output: Print updated list with removed items.

def delete_item(list,item)
  list.delete(item)
  return list
end

# Method to update the quantity of an item
# input: list, item name, new quantity
# steps:
#Take three parameters as input.
#Find item in list.
#Updates quantity in list.
#Print updated list.
# output: Hash with updated quantities

def update_list(new_list,item,new_qty)
  new_list[item]=new_qty
  return new_list
end

# Method to print a list and make it look pretty
# input: list (as a hash)
# steps: Iterate through each item in the list.
#Print Items and their quantities
# output: new list as a better formatted string

def print(list)
  puts "***This is your grocery list:***"
  list.each do |item,quantity|
  puts "-#{quantity} #{item}"
  end
end

#Driver Code
#Testing Create List Method & Print List
list= "carrots apples cereal pizza"
generate_list(list)

#Testing Add Item Method
hash=generate_list(list)
add_item(hash,"mango", 100)

#Testing Delete Item Method
delete_item(hash,"mango")

#Testing Update List Method
update_list(hash,"apples",12)

#Testing Print List
print(hash)

#Release 2
new_list="lemonade tomatoes onions ice-cream"
new_hash=generate_list(new_list)
update_list(new_hash,"lemonade",2)
update_list(new_hash,"tomatoes",3)
update_list(new_hash,"ice-cream",4)
delete_item(new_hash,"lemonade")
update_list(new_hash,"ice-cream",1)
print(new_hash)

=begin
Release 4: Reflect
What did you learn about pseudocode from working on this challenge?
Answer: I learn to need to create a concise, efficient, and clear pseudocode; otherwise, it'd be hard to go through our code and build a good program.

What are the tradeoffs of using arrays and hashes for this challenge?
Answer: it made our program more robust, and allowed us to output a better interface.

What does a method return?
Answer: return a value from its values.

What kind of things can you pass into methods as arguments?
Answer: strings, numbers, array, hash, and any other type of data you wanted but you might get errors if you pass worthing inadequate for a specific method.

How can you pass information between methods?
Answer: by using arguments


What concepts were solidified in this challenge, and what concepts are still confusing?
Answer: I am sure I was able to cement several concepts regarding the fundamentals of using methods, such as how we can pass arguments inside methods, how we can properly define methods, and how we correctly include items to hashes. 

Source of search: 
http://ruby-doc.org/, 
https://www.tutorialspoint.com/ruby/,
https://www.codecademy.com/learn/ruby
=end