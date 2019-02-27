# Sum Numbers

# Write a method that will take an array of numbers,
# and return their sum.

# Example:
# sum_numbers([1,1,1]) should return 3
# sum_numbers([5,2,100,0,10]) should return 117

# Check your solution by running the tests:
# ruby tests/04_sum_numbers_test.rb

numbers = []

def sum_numbers (numbers)

  sum = 0
  # for each item "a" in numbers array, aggregate the sum
  numbers.each {
    |a| sum += a
  }

  return sum
  puts "#{sum}"
end

# sum_numbers([])

# call method with numbers array
sum_numbers(numbers)

# OPTIONAL:
# Go to the tests folder and open 04_sum_numbers_test.rb.
# Read over the tests and see if you can understand them.

# Try add at least three more tests, and test at least 2 corner cases.

# Hint:
# You could test what happens when you call sum_numbers([])?


# Anthony's solution
# def sum_numbers (numbers)
#   acc = 0
#   numbers.each do |num|
#     acc += num
#   end
#   acc
# rescue Exception => e
#   p e.class, "Invalid input, please provide an array of numerable elements"
#   return nil
# end
