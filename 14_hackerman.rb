# You have to stop the infamous hackerman by writing a basic security program.

# Your task is to write a program which will ask the user for input twice.
# Both times should ask the user to type words and will display the FIRST input.

# However if any of the words in the second input match with a word from the
# first input it should say "HIDDEN" instead of the matched word.

# Example:
# first_input = bob rob dob mob
# second_input = kob fob dob

# output = bob rob HIDDEN mob

# Check your solution by running:
# ruby 14_hackerman.rb

# Your code here

first_input = []
second_input = []
output = []

puts "Input your first input."
first_input = gets.chomp.split(" ")
puts "Input your second input."
second_input = gets.chomp.split(" ")

# combine first_input array with second_input array
for item in output do
    # if item is in anywhere in output
    if output.include?(item)
        # replace with HIDDEN
       puts "I have found #{item}."
        #otherwise do nothing
    end
end

# Beast mode:
# Does your code deal with capital letters? Update your solution so that
# they will be downsized if they are input but HIDDEN remains capitalised.

# for second_item in second_input
#     if first_item != second_input
#         output << first_item
#         puts output
#     else first_item == second_input
#         output << "HIDDEN"
#     end
# end