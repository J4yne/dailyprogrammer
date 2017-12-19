# [2016-06-20] Challenge #272 [Easy] What's in the bag?
# https://redd.it/4oylbo

require 'pp'

class ScrabbleTiles

  attr_accessor :input 

  def initialize(input)
    @input = input

    # :letter => count, points
    @tiles = {
      A: [9, 1],
      B: [2, 3],
      C: [2, 3],
      D: [4, 2],
      E: [12, 1],
      F: [2, 4],
      G: [3, 2],
      H: [2, 4],
      I: [9, 1],
      J: [1, 8],
      K: [1, 5],
      L: [4, 1],
      M: [2, 3],
      N: [6, 1],
      O: [8, 1],
      P: [2, 3],
      Q: [1, 10],
      R: [6, 1],
      S: [4, 1],
      T: [6, 1],
      U: [4, 1],
      V: [2, 4],
      W: [2, 4],
      X: [1, 8],
      Y: [2, 4],
      Z: [1, 10],
      _: [2, 0]
    }
  end

  def print_tile
  end

  def set_letter_count
  end

  def subtract_count
    @input.each_char do |char|
      letter = @tiles.fetch(char.to_sym, "Error, that's not a letter!")
      letter[0] = letter[0] - 1
    end
  end

end

# the inputs
input = "abcdefgh"
input1 = "PQAREIOURSTHGWIOAE_"
input2 = "LQTOONOEFFJZT"
input3 = "AXHDRUIOR_XHJZUQEE"

output = ScrabbleTiles.new(input1)
pp output

### MAIN LOOP ### 
# this is supposed to take input from command line, commenting out for now.

=begin
loop do
  print "gimmie input:"
  input = gets.chomp
  if input == "exit"
    break
  else
    output(input)
    pp output
    output.subtract_count
    pp output
  end
end
=end

