=begin
5.7 Iteration Drill
Author: Marcos Pletcher
Application created on Repl.it, and tested in my Terminal 
=end
# Array Drills

# transform our array in a constant
ZOMBIE_APOCALYPSE_SUPPLIES = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk
# ----
# ---------Explanation----------
# .map! changes each one of these items of our array
# .join concatenates the following sentence to our array

ZOMBIE_APOCALYPSE_SUPPLIES.map! do |item|
  " * " + item
end
p ZOMBIE_APOCALYPSE_SUPPLIES.join


puts "\n --------"
# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.
# ----
# ---------Explanation----------
# Bobble Sort Loop iterates through our array
# Without using any built-in methods, sort in alphabetical order this array
# swap_cycles is required to assign the number of comparisons
# an index of -1 indicates the last element of the array
cycles = ZOMBIE_APOCALYPSE_SUPPLIES.length - 1

# keep changing position
loop do
  changed = false

  # Block iterates and changes positions
  # the item between pipes goes to be each of the numbers in turn
  cycles.times do |item|
    if ZOMBIE_APOCALYPSE_SUPPLIES[item] > ZOMBIE_APOCALYPSE_SUPPLIES[item + 1]
      ZOMBIE_APOCALYPSE_SUPPLIES[item], ZOMBIE_APOCALYPSE_SUPPLIES[item + 1] = ZOMBIE_APOCALYPSE_SUPPLIES[item + 1], ZOMBIE_APOCALYPSE_SUPPLIES[item]
      changed = true
    end
  end # close our do loop

  # otherwise cancel our iteration
  break if not changed
end

p ZOMBIE_APOCALYPSE_SUPPLIES


puts "\n --------"
# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?
# ----

# before checking this list, remove "*" from zombie_apocalypse_supplies
# it's very important, otherwise it'd be hard to compare arrays later on.
ZOMBIE_APOCALYPSE_SUPPLIES.map!{ |element| element.sub(" * ", "") }

def check_an_item_in_supplies

  # prompts the user to enter particular item
  puts "What item do you want to include?"
  entered_item = gets.chomp.to_s

  # each iterates over all items in my list and checks if that items has already been included
  ZOMBIE_APOCALYPSE_SUPPLIES.each do |x|

    if entered_item == x
      puts "#{entered_item} has already been included in our list of supplies."
    else
      puts "#{entered_item} has not already been included in our list of supplies."
    end # ends if else
  end # ends loop
end # ends method

check_an_item_in_supplies


puts "\n --------"

# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.
# ----

def remove_items(array)

  # create an empty array and shovel only 5 items from zombie_apocalypse_supplies
  array_essentials = []
  y = 0

  array.each do |essential_items|
    array_essentials << essential_items

    if y == 4
      break
    end # ends if else

    y += 1 # stops loop to be infinite
  end # ends loop

p  array_essentials
end
remove_items(ZOMBIE_APOCALYPSE_SUPPLIES)


puts "\n --------"

# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]
# ----
# ---------Explanation----------
# .uniq! compares and removes values between two arrays
def combine_supplies(existing_supplies, new_supplies)

  final_supplies = (existing_supplies + new_supplies).uniq!

  # shows up the supplies
  puts "New combined supplies list #{final_supplies}"
end

combine_supplies(ZOMBIE_APOCALYPSE_SUPPLIES, other_survivor_supplies)


puts "\n --------"


# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
# ----

def display_animals(animal_list)
  animal_list.each{ |hey, value| print hey.to_s + " - " + value.to_s + " * "}

end
display_animals(extinct_animals)


puts "\n --------"

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.
# ----
def extinct_animals_before2000(data)

  # create a temp hash for assigning values
  before200_hash = {}

  data.each { |key, value|
      if value < 1999
        before200_hash[key] = value
      end
  }
data =  before200_hash
end
p extinct_animals_before2000(extinct_animals)


puts "\n --------"
# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.
# ----

# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.
# ----

# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.
# ----
