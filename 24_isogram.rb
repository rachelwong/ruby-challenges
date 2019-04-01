# Isogram
# Difficulty: medium

# An isogram is a word that has no repeating letters; 
# consecutive or non-consecutive.

# Implement a method that determines whether a string 
# that contains only letters is an isogram. 
# The function will take the string as input, and will 
# return either true or false.


# *E.g.* isogram?("hello") should return false

# *E.g.* isogram?("scary") should return true

# def isogram?(input)
#     # Your code goes here
#     check = input.split('')
#     index = 0
#     while index < check.length
#         if check.include?(check[index])
#             index +=1
#             puts "true"
#         else
#             puts "false"
#             index +=1
#         end
#     end
# end

def isogram?(input)
    check = input.chars
    # p check
    index = 0

    check.size.times{
        if check.count(check[index]) > 1
            index +=1
            return false
            break
        else
            index +=1
        end
    }
    # go thru loop where count always =1 (no duplicates), and once at the end of array, THEN return true
    return true
end

# LEO SOLUTION
def isogram?(input)
    input.chars.length == input.chars.uniq.length ? true : false 
end

# Test your code here
# puts isogram?("hello") #should return false
puts isogram?("scary") #should return true
