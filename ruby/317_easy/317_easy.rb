# [2017-05-29] Challenge #317 [Easy] Collatz Tag System
# https://redd.it/6e08v6

def compute_collatz(input)
  until input == "a" do
    # slice out the first 2 digits.
    s = input.slice!(0..1)

    # test first digit of slice, and append relevant string.
    if s.chr == "a"
      input << "bc"
    elsif s.chr == "b"
      input << "a"
    else # it's "c"
      input << "aaa"
    end

    # print result of current iteration
    puts "#{input}"
  end
  
  puts "\n" # just separating inputs
end

input = "aaa"
compute_collatz(input)

input = "aaaaaaa"
compute_collatz(input)

