# Take 2 to 05_in_array
# 27.02.2019

#Solution 2
needle = "hello"
haystack = ["hi", "howdy", "hello"]

def in_array(needle, haystack)
    for hay in haystack
        if hay == needle
            puts "true"
        else 
            puts "false"
        end
    end
end

in_array(needle, haystack)

#Solution 3
needle=""
haystack=[]

def in_array (needle, haystack)
    return haystack.include?(needle)
end

def in_array(needle, haystack)
    haystack.each do |item|
        if item == needle
            return true
            
        end
        return false
    end
end