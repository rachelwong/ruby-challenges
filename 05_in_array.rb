# Methods

# Write a method called 'in_array' which will take 
# two parameteres:
# One as a string and one as an array of strings

# Return a boolean indicationg whether or not the
# string is found in the array.

# Test your solution with:
# ruby tests/05_in_array_test.rb

# Example:
# "hello", ["hi","howdy","hello"] should return true.

# Solution 2
# needle = ""
# haystack =[]

def in_array(needle, haystack)
  for hay in haystack
      if hay == needle
          return true
      end
  end
  return false
end

# Solution 1
# def in_array (needle, haystack)
#   if haystack.include? needle
#     puts "true"
#   else
#     puts "false"
#   end
# end

# in_array(needle, haystack)