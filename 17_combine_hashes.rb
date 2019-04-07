# Combine Hashes

# Write a method which will take two different hashes and will
# return their combined value in a new hash.

# If the hash contains numbers, the numbers for matching keys should
# be added and the sum stored in the combined hash

# If the hash contains strings, the strings for matching keys should
# be concatenated and the result stored in the combined hash

# Example:
# hash1 = { a: 3, b: 5, c: 1}
# hash2 = { a: 5, b: 2, c: 14}
# combine_hashes => { a: 8, b: 7, c: 15 }

# Example: 
# hash1 = {a: "a", b:"b", c:"c"}
# hash2 = {a: "a", b:"b", c:"c"}
# combine_hashes => {a: "aa", b:"bb", c:"cc"}



# Test your solution with ruby tests/17_combine_hashes.rb

def combine_hashes(hash1, hash2)
  index = 0
  hash3 = {}
  # for the length of hash1 
  hash1.each{ |key, value| 
  # if key1 of hash1 == key1 of hash2
  if hash1.keys[index] == hash2.keys[index]
    # add key1 of hash1 to hash3
    # add value1 of hash1 to value1 of hash2
    hash3[hash1.keys[index]] = hash1.values[index] + hash2.values[index]
    index +=1
  else
    # else continue to loop
    index += 1
  end
  }
  return hash3 
end

# hash1 = { a: 3, b: 5, c: 1}
# hash2 = { a: 5, b: 2, c: 14}
# combine_hashes => { a: 8, b: 7, c: 15 }
# p combine_hashes({ a: 3, b: 5, c: 1}, { a: 5, b: 2, c: 14})

# hash1 = {a: "a", b:"b", c:"c"}
# hash2 = {a: "a", b:"b", c:"c"}
# combine_hashes => {a: "aa", b:"bb", c:"cc"}
p combine_hashes({a: "a", b:"b", c:"c", d: "d"},{a: "a", b:"b", c:"c"})