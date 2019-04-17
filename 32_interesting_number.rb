# Interesting number

# An interesting number is one with at least 3 digits,
# in which the digits are either incrementing or decrementing.

# Examples:
# interesting_number(789) => true
# interesting_number(321) => true
# interesting_number(798) => false
# interesting_number(6) => false
# interesting_number(23) => false

# When the digits are incrementing, 0 comes after 9:
# interesting_number(7890) => true
# When the digits are decrementing, 0 comes after 1:
# interesting_number(3210) => true

def interesting_number(number)
    input_array = number.to_s.split('').map(&:to_i)
    if input_array.length >= 3
        return (increase?(input_array) or decrease?(input_array))
    else
        return false
    end
end

def increase?(input_array)
    index = 0
    while index < input_array.length
        if input_array[index] == 9 && input_array[index + 1] != 0
            return false
        elsif input_array[index + 1] != input_array[index].next
            return false
        end
        index += 1
        return true    
    end
end

def decrease?(input_array)
    index = 0
    while index < input_array.length
        if input_array[index + 1] != input_array[index] - 1
            return false
        elsif input_array[index] == 1 && input_array[index + 1] != 0
            return false
        end
        index += 1
        return true
    end
end