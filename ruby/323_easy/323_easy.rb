# [2017-07-10] Challenge #323 [Easy] 3SUM
# https://redd.it/6melen

# input
input1 = [4, 5, -1, -2, -7, 2, -5, -3, -7, -3, 1]
input2 = [-1, -6, -3, -7, 5, -8, 2, -8, 1]
input3 = [-5, -1, -4, 2, 9, -9, -6, -1, -7]

# method to find combos
def find_zero_combos(set)
  set.combination(3) { |c|
    if c.sum == 0
      puts "#{c}"
    else
      next
    end
  }
  puts "\n" # spacing output
end

# output
find_zero_combos(input1)
find_zero_combos(input2)
find_zero_combos(input3)

