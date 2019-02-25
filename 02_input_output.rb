# Write a program that accepts someone's name and age, and responds
# as shown here:

# Program is run and outputs:
# "What is your name?"

# User inputs: "Tom"

# Program outputs:
# "Hi Tom! How old are you?"

# User inputs: 40

# Program outputs:
# "Wow! You are 40 years old. Congratulations!"

# Beast mode challenge:
# Ater the above, the program calculates how many years until
# the user is 100 years old and tells the user. For example, for
# our user input above (Tom and 40), after outputing 
# "Wow! You are 40 years old. Congratulations!"
# The program also outputs:
# "Tom, in 60 years you will be 100 years old!"

puts "What is your name?"
name = gets.chomp
puts "Hi #{name}! How old are you?"
age = gets.chomp.to_i

puts "Wow! You are #{age} years old. Congratulations!"

if age < 100
    ageLimit = 100 - age
    puts "#{name}, in #{ageLimit} years you will be 100 years old."
elsif
    ageLimit = age - 100
    puts "Hey #{name}, it has been #{ageLimit} years since turning 100."
end