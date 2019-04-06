
# A balanced number is the number that the sum of all digits to the left of the middle digit(s) 
# and the sum of all digits to the right of the middle digit(s) are equal.

# If the number has an odd number of digits then there is only one middle digit, 
# e.g. 92645 has middle digit 6; otherwise, there are two middle digits , 
# e.g. 1301 has middle digits 3 and 0

# The middle digit(s) should not be considered when determining whether a 
# number is balanced or not, e.g 413023 is a balanced number because the 
# left sum and right sum are both 5 ('30' are the middle digits).

# Number passed is always positive.

# Return a string "Balanced" or "Not Balanced"

# Examples


# balancedNum(7) 
# => "Balanced"
# Explanation:
# Since, the sum of all digits to the left of the middle digit (0) 
# and the sum of all digits to the right of the middle digit (0) are equal, then it's balanced.
# Note: The middle digit is 7.


# balancedNum(295591) 
# => "Not Balanced"
# Explanation:

# Since, the sum of all digits to the left of the middle digits (11) 
# and the sum of all digits to the right of the middle digits (10) are equal, then it's not balanced.
# Note: The middle digit(s) are 55.

# balancedNum(959)
# => "Balanced"
#Explanation:
# Since, the sum of all digits to the left of the middle digits (9) 
# and the sum of all digits to the right of the middle digits (9) are equal, then it's balanced.
# Note: The middle digit is 5.

# balancedNum(27102983) 
# => "Not Balanced"
# Explanation:
# Since, the sum of all digits to the left of the middle digits (10) 
# and the sum of all digits to the right of the middle digits (20) are equal, then it's not balanced.
# Note : The middle digit(s) are 02.

def balanced_num(number)
    # Your code goes here
    left = 0
    right = 0
    # convert the integer into an array of digits
    num_array = number.to_s.split("").map{|num| num.to_i}

    if num_array.length.even?
        # left = from 0 to length /2 -1
        left = num_array.slice(0, num_array.length / 2 - 1)
        # right from length /2 +1 to end of array
        right = num_array.slice(num_array.length/2 +1, num_array.length)
        # if sum of left = sum of right then return balanced
        compare(left, right)
    else
        # left = from 0 to length / 2
        left = num_array.slice(0, num_array.length / 2)
        # right = from length / 2 to end of array
        right = num_array.slice(num_array.length / 2 + 1, num_array.length)
        # if sum of left = sum of right then return balanced
        compare(left, right)
    end 
end

# adds up the array and return a single integer
def sum_it_up(array)
    sum_of_array = 0
    array.each do |num|
        sum_of_array += num
    end
    return sum_of_array
end

def compare(left, right)
    if sum_it_up(left) == sum_it_up(right)
        p "Balanced"
    else
        p "Not Balanced"
    end
end

balanced_num(295591) # Not Balanced
balanced_num(959) # balanced


