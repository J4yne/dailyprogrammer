# [2017-05-01] Challenge #313 [Easy] Subset sum
# link

# brute force version

input = [1, 2, 3, 4, 5, -5]

# update all elements to absolute
input.map! {|i| i.abs }

# compare arrays
if input.uniq.length != input.length
  puts "found dups: true"
else
  puts "no dups: false"
end

