# Your challenge is to write a program which will ask the user for input.
# The code should then output the number of times words are used.

# Example:
# If the words 'hi hi Hi hello 1 1' are input, the result should be:
# hi 2
# Hi 1
# hello 1
# 1 2

# Test your solution by running 12_count_words


# Your code here


# Beast Mode:
# Change your code so that it doesn't matter if capital letters are used,
# In the above example the result should be:
# hi 3
# hello 1
# 1 2

def count_words(input)
    input_arr = input.downcase.split(" ")
    output = {}
    input_arr.each do |item|
        if output_contains_key?(output, item)
            output[item] +=1
        else
            output[item] = 1
        end
    end
    return output
end

def output_contains_key?(ouput, key)
    output.each do |k|
        if k === key
            return true
        end
    end
    return false
end