# [2017-04-10] Challenge #310 [Easy] Kids Lotto
# https://redd.it/64jesw

# input
puts "enter kids:"
kids_array = gets.chomp.split(";").shuffle!

puts "list length:"
list_length = gets.chomp.to_i

# loop through entire array, using a range to determine how big array is.
for i in (1..kids_array.length)
  
  # kid at [0] is kid receiving list; kids [1] to list_length become kid[0]'s list. 
  puts "#{kids_array[0]} > #{kids_array[1, list_length].join(";")}"

  # rotate the entire array in place, to get a new kid at [0]
  kids_array.rotate!
end

