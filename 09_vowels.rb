# Vowels

# Write a method that will take a string and
# return an array of vowels used in that string.

# Example:
# count_vowels("The quick brown fox") should return ["e","u","i","o","o"]
# count_vowels("Hello World") should return ["e","o","o"]

# Check your solution by running the tests:
# ruby tests/09_vowels_test.rb

  # split the string into array of characters
  # for each character in the array
    # if character != a or e or i or o or u
      # remove the non vowel element from the array
    # reaches end of the array, return the array

def vowels (string)
  stringlist = []
  result = []

  # turn the string into an array of letters
  stringlist = string.chars

  # for each element in the array
  stringlist.each do |char|
    # if the element is a vowel
    if char=="a" || char=="e" || char=="i" || char=="o" || char=="u"
      # add it to a new array
      result << char
    end
  end
  # return the array when it goes through the whole array
  return result
end

# join = joins all the chars into a new string
# print the method call result
puts vowels("The quick brown fox").join

#   while counter < stringlist.length do
#       puts counter += 1
#       puts stringlist
#     else
#       return stringlist[counter]
#     end
#   end
# end