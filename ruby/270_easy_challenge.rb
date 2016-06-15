# Challenge #270 [Easy] Transpose the input text
# https://redd.it/4msu2x

require 'pp'

class TransposeText

  attr_accessor :input

  def initialize(input)
    @input = input
  end

  def convert_input_to_array
    @input_array = @input.each_line.to_a
  end

  def find_max_columns
    # determine number of columns, by length of longest string in array
    @max_col = @input_array.max_by { |x| x.length }.length
  end
 
  def create_multidim_array
    @multi_array = Array.new
    @input_array.each do |row|
      ary = row.each_char.to_a
      @multi_array.push(ary)
    end
  end

  def make_square
    @input_array.each do |row|
      row << " " until row.length == @max_col
    end
  end

  def transpose_array
    @output_array = @multi_array.transpose
  end
  
  def print_array
    @output_array.each do |r|
      r.each do |c|
        if c == "\n"
          print " ".chomp
        elsif
          print c.chomp
        end
      end
      print "\n"
    end
  end

end

input = <<EOF
package main

import "fmt"

func main() {
    queue := make(chan string, 2)
    queue <- "one"
    queue <- "twoO"
    close(queue)
    for elem := range queue {
        fmt.Println(elem)
    }
}
EOF

output = TransposeText.new(input)
output.convert_input_to_array
output.find_max_columns
output.make_square
output.create_multidim_array
output.transpose_array
output.print_array

