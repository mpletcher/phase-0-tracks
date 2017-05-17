=begin
5.6 Mandatory Pairing: Solving Problems with Data Structures
Author: Marcos Pletcher, Sarah Schaab
=end

arr = [42, 1.0, "car", 1]

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
p search_number_array(arr, 1)

puts "\n---------------"
# Calculate Fibonacci Numbers
# Concept:  you start off with a 0 and a 1, and keep adding numbers onto the list by adding the previous two
# Each number in the array is the sum of the previous two numbers, except for the 0 and the 1

# Add a method to your file that takes a number of Fibonacci
def fibonacci(number_fib)
  # Each number in the array is the sum of the previous two numbers, except for the 0 and the 1
  array_fib = [0 ,1]

  #to use .time, need to decide the times
  # need a temp number to reassign our variables
  temp_number = number_fib -2 # less indexes 1 and 0

  # block to itenerate our list
  temp_number.times do |sum_second_number_to_last, last_number|

    # easy to read later reassigned
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
