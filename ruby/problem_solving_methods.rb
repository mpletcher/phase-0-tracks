=begin
5.6 Mandatory Pairing: Solving Problems with Data Structures
Author: Marcos Pletcher, Sarah Schaab
=end

puts "\nSearch for Array and Number:"
puts "---------------"

arr = [42, 89, 23, 1]

def search_number_array (my_array, number)

  # create a nested hash
  nested_hash = {}
  hash_hey = 0 # key
    # add a block to iterate our list
    my_array.each do |item|
      nested_hash[hash_hey]= item
    hash_hey += 1
  end

  nested_hash.key(number)
end


#p search_number_array(arr, 1)
p search_number_array(arr, 24)

puts "\nFibonacci Numbers:"
puts "---------------"
# Calculate Fibonacci Numbers
# Concept:  you start off with a 0 and a 1, and keep adding numbers onto the list by adding the previous two
# Each number in the array is the sum of the previous two numbers, except for the 0 and the 1

# Add a method to your file that takes a number of Fibonacci
def fibonacci(number_fib)
  # Each number in the array is the sum of the previous two numbers, except for the 0 and the 1
  array_fib = [0 ,1]

  # need a temp number to reassign our variables
  temp_number = number_fib -2 # less indexes 1 and 0

  # block to itenerate our list
  temp_number.times do |sum_second_number_to_last, last_number|

    # doesnt count 0 and 1
    sum_second_number_to_last = array_fib[-2]
    last_number = array_fib[-1]
    new_fib_sequence = sum_second_number_to_last + last_number

    # add new number in the array
    array_fib.push(new_fib_sequence)
  end

  # show up our result and test it
  p array_fib

end

fibonacci(6)
#fibonacci(100)

puts "\nBobble Sort:"
puts "---------------"

=begin 
-------------Bubble Sort Pseudocode----------------
Begin with the first number of the block (from left to the right of it)
Start walking through the block and swapping positions
If the a number is smaller than other, swap positions
=end 

array = [20, 1, 15, 2, 4]
# swap_cycles is required to assign the number of comparisons
# an index of -1 indicates the last element of the array
# start from the last element
swap_cycles = array.length - 1

# keep changing position
loop do
  changed = false
 
 # Block iterates and changes positions
 # your item between pipes goes to be each of the numbers in turn
  swap_cycles.times do |item|
    if array[item] > array[item + 1]
    array[item], array[item + 1] = array[item + 1], array[item]
    changed = true
    end
  end # close our do loop
 
 # otherwise cancel our iteration
 break if not changed
end 
 
p array