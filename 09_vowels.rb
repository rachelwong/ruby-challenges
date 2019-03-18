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
  array = string.chars() # convert string into an array of characters
  result = []
  for item in array do
    if item == "a" || item == "e" || item == "i" || item == "o" || item == "u"
      result << item
    end
  end
  print result
end
  
vowels("Hello World")
