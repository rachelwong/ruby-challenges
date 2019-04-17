# Spin words
# Difficulty: medium

# Write a function that takes in a string of one or more words, 
# and returns the same string, but with all five or more letter words 
# reversed. 

# Strings passed in will consist of only letters and spaces. 
# Spaces will be included only when more than one word is present.

# Examples:
# spin_words( "Hey fellow warriors" ) => returns "Hey wollef sroirraw" 
# spin_words( "This is a test") => returns "This is a test" 
# spin_words( "This is another test" )=> returns "This is rehtona test"

# Tests provided use rspec

def spin_words (words)
    list = words.split(" ")
    final = []
    for item in list do
        if item.chars.length >= 5
            final << item.chars.reverse
            final << " "
        else
            final << item
            final << " "
        end
    end
    return final.join.strip
end


def spin_words(words)
    words = words.split
    words.map do |x|
        if x.length >= 5
            x.reverse!
        end
    end
    return words.join(' ')
end