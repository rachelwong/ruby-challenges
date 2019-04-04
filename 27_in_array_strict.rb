# Is it in the array strict mode

# Arrays can store all different data types. 
# These arrays can get quite large and it can get 
# quite difficult to keep track of what is in them. 
# Sometimes, we want extra flexibility in an array search, 
# and want control over casing.

# Create a function that will take a string, 
# an array, an additional argument called **strict**, 
# and will return whether or not that string exists in the array. 
# The additional argument, strict, is a boolean argument.

# * If strict is true, in_array_strict? should care about LEtTeR cASinG
# * If strict is false, in_array_strict? should not care about LEtTeR cASinG and should return true for any match

# Create Test::Unit tests in 27_in_array_strict_test.rb

# Examples:
# in_array_strict?("HeLLo", ["hi", "howdy", "Hello"], true) => false
# in_array_strict?("HeLLo", ["hi", "howdy", "Hello"], false) => true

## Optional
# Try completing this challenge without using any array 
# helper methods, except for .each

def in_array_strict? (string, arr, strict)

    # if strict == true, casing matters and exact match is required
    # if string is included in array
    # return false
    # else return true
    if strict == true
        if arr.include?(string)
            return true
        else
            return false
        end
    end
    # if strict == false, casing doesn't matter, downcase everything
    # downcase everything in arr and string
    # if string is included in array
    # return true
    # else return false

    if strict == false
        for word in arr do 
            if string.downcase == word.downcase
                return true
            end
        end
        return false
        # new_string = string.downcase
        # new_arr = arr.map(&:downcase)
        
        # if new_arr.include?(new_string)
        #     return true
        # else
        #     return false
        # end
    end
end
# p in_array_strict?("HeLLo", ["hi", "howdy", "Hello"], true) 
# => false
# p in_array_strict?("HeLLo", ["hi", "howdy", "Hello"], false) 
#=> true