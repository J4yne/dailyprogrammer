# [2017-05-01] Challenge #313 [Easy] Subset sum
# https://redd.it/68oda5

# base challenge

input = [0, 1, 2, 3, 4, 5]

# update all elements to absolute
input.map! {|i| i.abs }

# compare arrays
if (input.uniq.length != input.length) || (input.any? {|i| i == 0})
  puts "true -- is subset, found dups or zero."
else
  puts "false -- not subset, found no dups or zero."
end

