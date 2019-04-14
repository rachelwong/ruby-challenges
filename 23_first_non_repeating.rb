# Find the first non-repeated character
# Difficulty: medium

# String methods are an incredibly powerful way to 
# validate and control user input.

# Write a method that will find the first non-repeated 
# character in a String. 
# Return false if only repeats are found. 

# *Try writing this by hand first*. 
# Confusing methods like this can become a lot more simple after 
# they are written by hand. 


#*E.g.* first-non-repeat("aaaabbbcccdeeefgh") should return 'd'

#*E.g.* first-non-repeat("wwwhhhggge") should return 'e'

#*E.g.* first-non-repeat("wwwhhhggg") should return false


## Optional
# If given a long string, this would take a fair chunk of computing power, 
# as it would have to go over every character. Can you return on the first 
# non-repeat, without checking every other letter?

def first_non_repeating(input)
    input_array = input.chars
    index = 0
    input_hash = {}
    for char in input_array do
        # If it's not in the hash already
        if input_hash.key?(char)
        # add char as key to input_hash
        # increment 1 to value of the char key in input_hash
            input_hash[char] += 1
        else
            # create a new key in input_hash and assign value as one
            input_hash[char] = 1
        end
    end
    p input_hash.key(1)
end
# Test your code here
# puts first_non_repeating("aaaabbbcccdeeefgh")
# puts first_non_repeating("wwwhhhggge")
first_non_repeating("wwwhhhggg")