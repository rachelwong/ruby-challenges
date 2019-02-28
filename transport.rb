# PART 1:
# - Create a well named variable that contains the amount of time it took you to get to class
# - Create a complete sentence  that lets us know how you got to class and how long it took
# - Print this complete sentence

# Part 1


puts "How do you commute to class?" # prompt user for transport mode

transport = gets.chomp.downcase # receive user input a transport mode

while transport != "done" # user can input multiple modes of transport to get to class
    if transport=="car" || transport=="plane" || transport=="bus" || transport=="bike" || transport=="boat" || transport=="train" || transport=="walking" # where transport is an acceptable mode 
        puts "How many minutes does it take?" 
        commute_time = gets.chomp.to_i
        puts "It takes you #{commute_time} minutes by #{transport} to get to class."
    else
        puts "Invalid transport mode inputted."
    end
end