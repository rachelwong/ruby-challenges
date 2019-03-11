# Unique

# Ruby has a handy array.unique helper which removes
# duplicates. Imlpement your own version of the helper,
# without using .unique.

# Difficulty:
# 5/10

# Example:
# unique([1,2,3,3]) should return [1,2,3]
# unique(["tom", "tom", "tom"]) should return ["tom"]

# Hints:
# A hash could be helpful in your solution.

# Check your solution by running the tests:
# ruby tests/10_unique_test.rb

def unique(mylist)

  counts = Hash.new(0)

  mylist.each { |item|
    # if item is Not in the hash
    puts "looking in hash for #{item}"
    if counts[item] == 0
      puts "#{item} is not in hash. Adding it!"
      counts[item] = 1
    end
    # counts[item] +=1
    # puts counts
    # if counts[item] > 1
    # end
}

  # if element you are testing is the same
  # remove the element you are testing
  # else redo the loop
  
end

unique(["tom", "tom", "tom"])