# Exes and Ohs
# Difficulty: medium/hard

# This is a great question for interview prep, so lets not google it. 
# Instead, try whiteboarding, and thinking of your approach before coding. There are multiple approaches to this question, so try to think of the most efficient one you can!

# Write a method that will take a string as an input. 
# The method will check this string, and count the amount 
# of 'x's and 'o's. It should return true if the amount of 'x's 
# and 'o's are the same, and should return false if they are different. 
# It should also be case insensitive, and work with any set of two 
# characters (for example, the string could contain "oooxxx" or
# "eeefff" - both of these would return true because there are
# two distinct characters and an equal number of each in both
# examples).

# Example input: "ooxx"
# Expected output: true

# Example input: "oOxXxoX"
# Expected output: false

# Example input: "ooXx"
# Expected output: true

# Example input: "rtrt"
# Expected output: true

# Example input: "RtrT"
# Expected output: true

# Example input: "efefy"
# Expected output: false

def exes_and_ohs(input)
    # Your code goes here
    new_array = input.chars
    index = 0
    new_hash = Hash.new(0)

    for char in new_array do
        # if the character is a key in the hash
        if new_hash.key?(char)
            # increment the key's value by one
            new_hash[char] += 1
        else
            new_hash[char]= 1
        end
    end
    
    # comparing the last value in the array with nil, returns false and drops out auto 
    i = 0
    frequency_array = new_hash.values
    while i < frequency_array.length - 1 # off by one error
        if frequency_array[i] != frequency_array[i+1] 
            return false # because return will stop the iteration 
        end
        i += 1 # increment to escape infinite loop
    end

    # previous_item = 23
    # array.each |item| do
    #     if item == previous_item
    #         puts "hello"
    #     else
    #         puts "yo"
    #     end
    #     previous_item = item
    # end

    return true # run through the length of the values, if none are differnt then return true
end

p exes_and_ohs("aaabbbccc")