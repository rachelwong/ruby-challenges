# PART 2:
# You are working at a bar where you have a current backlog of drinks to make:
# 3 cocktails
# 2 waters
# and
# 6 beers

# Write a program that asks the customer for their order.
#   if they order a cocktail, add one to the number of cocktails you need to make,
#   if they order a water, add one to the number of waters you need to make,
#   if they order a beer, add one to the number of beers you need to pour

# Print the final drinks order so you know what to make

list = {"cocktail" => 3, "water" => 2, "beer" => 6} # starting list as hash
order = "" # initialise customer order as string

until order == "done" # unless customer ends order
    
    # prompts customer for order
    puts "What would you like to order?" 
    puts "Cocktail, Water, Beer"

    order = gets.chomp.downcase # user input orders

    case order
        when "cocktail" # if user input cocktail, increment value by 1 on the list hash
            list["cocktail"] += 1
            puts list # print list of drinks
            puts calculator(list) # send list hash to calculator method to calculate and print the total profit
        when "water" # if user input water, increment value by 1 on the list hash
            list["water"] += 1
            puts list # print list of drinks
            puts calculator(list) # send list hash to calculator method to calculate and print the total profit
        when "beer" # if user input beer, increment value by 1 on the list hash
            list["beer"] += 1
            puts list # print list of drinks
            puts calculator(list) # send list hash to calculator method to calculate and print the total profit
        else # if user input anything else, error
            puts "Error: choose from cocktail, water or beer" # alert customer to input order
        end
end

# customer inputs done. program exits
puts "Goodbye"

# Part Three:
# Cocktails sell for $22, and cost $8 to make
# Beer sell for $12, and cost $3 to pour
# Water sell for $6, and cost $0.15 to make

# Print out the total profit for the orders you have

profit = 0
cost = 0
price = 0

# calculates profit from receiving list hash argument
def calculator(list)
    profit = total_price(list) - total_cost(list) 
    return profit
end

# calculate total cost of drinks receiving list hash argument
def total_cost(list)
    cost = list["cocktail"]*8 + list["beer"]*3 + list["water"]*0.15
    return cost
end

# calculate total sale price of drinks receiving list hash argument
def total_price(list)
    price = list["cocktail"]*22 + list["beer"]*12 + list["water"]*6
    return price
end