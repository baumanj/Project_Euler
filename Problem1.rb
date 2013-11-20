# Problem 1
# Find the sum of all the multiples of 3 or 5 below 1000

n = 1000

multiples = (1...n).select do |num|
	num % 3 == 0 || num % 5  == 0
end

puts multiples.inject {|sum, num| sum + num}
