# Included Once
#
# Write a method that takes an array and a string. Return
# true if the string is found in the array only once.
# Otherwise return false.
#
# What's the time complexity of your solution? Can it be improved?
#
# *** Whiteboard this first ***
#
# Difficulty: 4/10
#
# Example:
# includedOnce(['hello','hi','hi'], 'hi') -> false
# includedOnce(['hello','hi','hey'], 'hi') -> true
#
# Check your solution by running the tests:
# ruby tests/14_included_once_test.rb
#

def included_once (haystack, needle)
  i = 0
  haystack.each { |hay| #loop through each element in the haystack array
    if hay == needle # if the array element (hay) is what we're looking for (needle)
      i +=1 # increment the counter by one
    end # if it doens't match, keep looping till the end of the array
  }
  if i == 1 # if the counter finds 1 instance of needle
    return true # spit out true
  else # if the counter finds more than 1 instance of needle
    return false # spit out false
  end
end
included_once(['hello','hi','hi'], 'hi')