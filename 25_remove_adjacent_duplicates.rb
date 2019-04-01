# Remove adjacent duplicates

# Sometimes we have input with adjacent duplicates, and we want to remove
# those adjacent duplicates, keeping the original input in order.

# Create a method, which takes a string argument and returns a string
# with duplicate adjacent elements removed, preserving the original
# order of characters and preserving original case. Your algorithm
# should be case sensitive, meaning that "Aa" should not be considered
# duplicate adjacent characters, like "aa" or "AA".  

# *E.g.* remove_adjacent_duplicates("AAaAbbCCCcDDcDA") should return "AaAbCcDcDA"

# *E.g.* should return exactly the same string: "abcABCabcABC"

# NON MUTATING 
def remove_adjacent_duplicates(input)
    new_array=[]
    check = input.split('')
    index = 0
    while index < check.length 
    # if first checking character is different to the second character
        if check[index] != check[index+1]
            # shunt to new_array
            new_array << check[index]
            index += 1
        else
    # otherwise move onto the rest of the array
        index +=1
        end
    end
    p new_array.join("")
end

# MUTATING
def remove_adjacent_duplicates(input)
    check = input.split('')
    index = 0
    # for the length of size, do the following block
    check.size.times{
        # if the first character you check IS SAME AS the second character you check
        if check[index] == check[index+1]
            # delete the first character that you check
            check.delete_at[index]

        # otherwise, continue to iterate through the loop
        else
            index+=1
        end
    }
    # once you have reached the end of the array, print your result 
    p check
end

remove_adjacent_duplicates("AAaAbbCCCcDDcDA")
remove_adjacent_duplicates("abcABCabcABC")