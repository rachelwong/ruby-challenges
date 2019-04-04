# Write a program which will ask users for a string input.
# The program should display the input unless, it contains the letter 's'.

# If 's' is included change the output so that it will be 'th' instead.

# Examples:
# input = say hi
# output = thay hi

# input = mississippi
# output = miththiththippi

# Hint:
# Look up String on Ruby docs to help.

# Check your solution by running:
# ruby 15_change_letters.rb

def change_s(string)
    check = string.downcase.split('')

    check.map!{ |char|
        if(char == "s")
            "th"
        else
            char
        end
    }

    # This did not work
    # for char in check
    #     if char == "s"
    #         p "I'm here"
    #         check[char] = "th"
    #     end 
    #     p "i'm also here"
    # end
    p check.join
end

change_s("say hi")