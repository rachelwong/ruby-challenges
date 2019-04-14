# Background
# Using array and string methods
# Passing in one argument

## Specs

#Your task is to make a function that can take any 
#non-negative integer as a argument and return it 
#with its digits in descending order. 
#Essentially, rearrange the digits to create 
#the highest possible number.

#Examples:
#Input: 21445 Output: 54421
#Input: 145263 Output: 654321
#Input: 1254859723 Output: 9875543221

# def descending_order(n)
#     num_array = n.to_s.split("").map{|num| num.to_i}
#     p num_array.sort.reverse.join.to_i
# end

# # Test your code here
# descending_order(1254859723)

# Add some interesting test cases that test edge cases

# attempting bubble sort
def ascending_order(num_array, need_to_sort)
        p "I'm starting a sort with #{num_array}"
        second = 0
        need_to_sort_again = false
        index = 0
        while index < (num_array.length - 1)
            first = num_array[index]
            second = num_array[index +1] 
            # p "first: #{first}, second: #{second}"
            if first > second
                num_array[index + 1] = first
                num_array[index] = second 
                index +=1
                need_to_sort_again = true
            else
                index +=1
            end
            need_to_sort = false
            # p num_array
        end

        if need_to_sort_again == true
            ascending_order(num_array, true)
        else
        return num_array
        end
end

number = 824653
num_array = number.to_s.split("").map{|num| num.to_i}
ascending_order(num_array, true)


# attempting bubble sort
def ascending_order(n)
    num_array = n.to_s.split("").map{|num| num.to_i}
   index = 0
   second = 0
   need_to_sort_again = true

   while need_to_sort_again == true
       need_to_sort_again = false
       index = 0
       while index < (num_array.length - 1)
           first = num_array[index]
           second = num_array[index +1] 
           # p "first: #{first}, second: #{second}"
           if first > second
               num_array[index + 1] = first
               num_array[index] = second 
               index +=1
               need_to_sort_again = true
           else
               index +=1
           end
           p num_array
       end
   end
   return num_array.join.to_i
end