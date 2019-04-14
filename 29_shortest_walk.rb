# Shortest walk
# Difficulty: hard

# A man was given directions to go from one point to another.
# The directions were "NORTH", "SOUTH", "WEST", "EAST". 
# Clearly "NORTH" and "SOUTH" are opposite, "WEST" and "EAST" too. 
# Going to one direction and coming back the opposite direction is a needless effort. 
# Since this is the wild west, with dreadfull weather and not much water, 
# it's important to save yourself some energy, otherwise you might die of thirst!

# How I crossed the desert the smart way.
# The directions given to the man are, for example, the following:

# ["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"].

# You can immediatly see that going "NORTH" and then "SOUTH" is not reasonable, 
# better stay to the same place! So the task is to give to the man a simplified 
# version of the plan. A better plan in this case is simply:

# ["WEST"]

# Other examples:
# In ["NORTH", "SOUTH", "EAST", "WEST"], 
# the direction "NORTH" + "SOUTH" is going north and coming back right away. 
# What a waste of time! Better to do nothing.

# The path becomes ["EAST", "WEST"], now "EAST" and "WEST" annihilate each other, 
# therefore, the final result is [] 

# In ["NORTH", "EAST", "WEST", "SOUTH", "WEST", "WEST"], 
# "NORTH" and "SOUTH" are not directly opposite but they become directly 
# opposite after the reduction of "EAST" and "WEST" so the whole path is reducible 
# to ["WEST", "WEST"].

# Task
# Write a function shortest_walk which will take an array of strings and 
# returns an array of strings with the needless directions removed 
# (W<->E or S<->N side by side).

# Examples
# shortest_walk(["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"]) # => ["WEST"]
# shortest_walk(["NORTH", "SOUTH", "EAST", "WEST"]) # => []

# The test with the challenge use rspec

# def shortest_walk(walk)
#     directions = { "NORTH" => 0, "SOUTH" => 0, "WEST" => 0, "EAST" => 0}

#     for vector in walk do
#         case vector
#         when "NORTH"
#             directions["NORTH"] +=1
#         when "SOUTH"
#             directions["SOUTH"] +=1
#         when "WEST"
#             directions["WEST"] +=1
#         when "EAST"
#             directions["EAST"] +=1
#         end
#     end
#     p directions.values
# end
# p shortest_walk(["NORTH", "SOUTH", "EAST", "WEST"]) # => []
# shortest_walk(["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"]) # => ["WEST"]

def shortest_walk(walk)
#     # initialise separate arrays to hold the filtered vectors
    north = []
    south = []
    east = []
    west = []

    # sort walk into separate arrays holding the vectors
    for vector in walk do
        case vector
        when "NORTH"
            north << vector
        when "SOUTH"
            south << vector
        when "EAST"
            east << vector
        when "WEST"
            west << vector
        end
    end

    # if there is more east than west
    if east.count > west.count
        # return number of east vectors from the difference
        return east.sample(east.count - west.count)
    # if there are more west than east
    elsif west.count > east.count
        # return number of west vectors from the difference
        return west.sample(west.count - east.count)
    # if there are equal numbers of east and west vectors
    elsif east.count == west.count
        # return an empty array
        return []
    end

    # if there are more south vectors than north vectors
    if south.count > north.count
        # return number of south vectors from the difference
        return south.sample(south.count - north.count)
    # if there are more north vectors than south vectors
    elsif north.count > south.count
        # return number of north vectors from the difference
        return north.sample(north.count - south.count)
    # if there are equal numbers of northa and south vectors
    elsif north.count == south.count
        # return an empty array
        return []
    end
end

p shortest_walk(["NORTH", "SOUTH", "WEST", "EAST"])