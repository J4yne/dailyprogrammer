# [2017-07-10] Challenge #323 [Easy] 3SUM
# link

set = [4, 5, -1, -2, -7, 2, -5, -3, -7, -3, 1]

set.combination(3) { |c|
  a = c.sum
  if a == 0
    puts a
  else
    next
  end
}

