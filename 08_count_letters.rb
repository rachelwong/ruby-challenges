# Count Letters

# Write a method that will take a string, keep count
# of each letter and return the totals as a hash.

# Example:
# count_letters("hello") should return {"h"=>1, "e"=>1, "l"=>2, "o"=>1}
# count_letters("mississippi") should return {"m"=>1, "i"=>4, "s"=>4, "p"=>2}

# Check your solution by running the tests:
# ruby tests/08_count_letters_test.rb

def count_letters (string)
  result = {} # You'll need an empty hash to get started!
  array = string.chars() # split string into an array of characters
  puts array

  # in every character/item of the string array
  for item in array do 
    puts "I have found #{item}."

    # if the character is in the result hash as a key
    if result.has_key?(item)

      # increment the key's vaue with 1
      result[item] += 1
      puts result

    # if the character is NOT in the result hash as a key
    else

      # add to result hash as a new key with value of one 
      result[item] = 1
    end
  return result # return the hash
  end
end

count_letters("hello")