# Problem 2
# Find the sum of even Fibonacci numbers that do not exceed 4 million

x = 1
y = 2 # The problem states the sequence starts with 1, 2

# Ruby allows _ to make numeric literals more readable
# Also, there's no need to store the whole array of numbers; sum as you go
# Finally, using x as your while condition allows for a simpler body
sum = 0
while x <= 4_000_000  # The problem says, "do not exceed", not less than
  sum += x if x.even? # Ruby supports postfix conditionals
  x, y = y, x + y     # and parallel assignment
end

puts sum

