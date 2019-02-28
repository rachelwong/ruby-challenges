list = {"cocktail"=>2, "beer"=>2, "water"=>2}

# calculates profit from receiving list hash argument
def calculator(list)
    profit = total_price(list) - total_cost(list) 
    puts "#{profit}"
end

# calculate total cost of drinks receiving liwst hash argument
def total_cost(list)
    cost = list["cocktail"]*8 + list["beer"]*3 + list["water"]*0.15
    puts "#{cost}"
end

# calculate total sale price of drinks receiving list hash argument
def total_price(list)
    price = list["cocktail"]*22 + list["beer"]*12 + list["water"]*6
    puts "#{price}"
end

puts cost = total_cost(list)
puts price = total_price(list)
puts profit = calculator(list)