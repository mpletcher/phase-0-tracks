=begin
5.6 Mandatory Pairing: Solving Problems with Data Structures
Author: Marcos Pletcher, Sarah Schaab
=end

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
p search_number_array(arr, 1)