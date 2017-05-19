=begin
5.7 Iteration Drill
Author: Marcos Pletcher
=end
# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk
# ----
# ---------Explanation----------
# .map! changes each one of these items of our array
# .join concatenates the following sentence to our array
zombie_apocalypse_supplies.map! do |item|
  " * " + item
end
p zombie_apocalypse_supplies.join

puts "\n --------"
# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.
# ----
# ---------Explanation----------
# Bobble Sort Loop iterates through our array
# Without using any built-in methods, sort in alphabetical order this array
# swap_cycles is required to assign the number of comparisons
# an index of -1 indicates the last element of the array
cycles = zombie_apocalypse_supplies.length - 1

# keep changing position
loop do
  changed = false

  # Block iterates and changes positions
  # the item between pipes goes to be each of the numbers in turn
  cycles.times do |item|
    if zombie_apocalypse_supplies[item] > zombie_apocalypse_supplies[item + 1]
      zombie_apocalypse_supplies[item], zombie_apocalypse_supplies[item + 1] = zombie_apocalypse_supplies[item + 1], zombie_apocalypse_supplies[item]
      changed = true
    end
  end # close our do loop

  # otherwise cancel our iteration
  break if not changed
end

p zombie_apocalypse_supplies

puts "\n --------"
# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?
# ----

# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.
# ----

# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]
# ----

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

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.
# ----

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
