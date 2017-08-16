# [2017-07-10] Challenge #323 [Easy] 3SUM
# https://redd.it/6melen

# input
input1 = [4, 5, -1, -2, -7, 2, -5, -3, -7, -3, 1]
input2 = [-1, -6, -3, -7, 5, -8, 2, -8, 1]
input3 = [-5, -1, -4, 2, 9, -9, -6, -1, -7]

def find_triples(set)

  trips = [] # array for finding dups
 
  set.combination(3) { |combo|
    if combo.sum == 0
      trips << combo # dump good combo into array
    else
      next
    end
  }

  trips.each { |i| i.sort! } # sort array, then
  trips.uniq! # remove dups, then
  trips.each { |i| puts "#{i}" } # print em out
  puts "\n" # spacer
end

# output
find_triples(input1)
find_triples(input2)
find_triples(input3)

