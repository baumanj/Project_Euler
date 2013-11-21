# Problem 3
# Find the largest prime factor of 600851475143

n = 600851475143
# Returns array of factors of n
factors = (2..Math.sqrt(n)).select {|factor| n % factor == 0}
# [71, 839, 1471, 6857, 59569, 104441, 486847] 

# Returns array "factors" containing only the prime numbers from the array "factors"

# This function is unnecessary since we have Prime.prime?, but I wanted 
# to show you how I'd rewrite your prime testing algorithm
def prime?(n)
  (2..Math.sqrt(n)).none? {|x| n % x == 0}
end

# Almost any time you're generating a single number from an Enumerable,
# reduce (aka inject) works nicely
max_factor = factors.reduce do |max_so_far, next_factor|
  prime?(next_factor) ? next_factor : max_so_far
end

puts max_factor

