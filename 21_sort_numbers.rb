# Sorting algorithms are a key tool in programming.
#
# Write an algorithm that will sort an array of numbers 
# in ascending order. 
# Do not use the .sort method - the idea is that you write
# your own sort method.
# 
# Use hand simulation or pythontutor.com to determine how
# many times your solution visits each element of the array
# in a worse case scenario. If your array has 10 elements for example,
# in a worse case situation does your algorithm examine each element
# once? Twice? More? Less?
# 
# This will help you begin to understand order of complexity
# of algorithms.
#
# Optional:
# Look up explanations of common sorting algoithms
# like bubble sort and quick sort. Don't look up code, just look up the 
# explanations and see if you can implement one of those. 
# Which one is your favourite and why?
#
# Example input: [2,5,4,8,2]
# Expected output: [2,2,4,5,8]

def sort(num_array)
    p pivot = num_array[rand(0..num_array.length)]
    for num in num_array
        if num < pivot
            num_array.unshift(num) 
        else
            num_array << num
        end
    end
    p num_array
end

def partition
end

sort([2,5,4,8,2])
# def sort(num_array)
#     # Your code goes here

#     if num_array.length <= 1
#         return num_array
#     else 
#         pivot = num_array.sample
#         p pivot
#         num_array.delete_at(num_array.index(pivot)) #remove pivot
#         less = []
#         greater = []

#         num_array.each do |num|
#             if num <= pivot
#                 less << num
#             else
#                 great << num
#             end
#         end
#     end
#     sorted_array = []
#     sorted_array << self.sort(less)
#     sorted_array << pivot
#     sorted_array << self.sort(great)
# end


