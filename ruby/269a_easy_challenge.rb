# [2016-05-30] Challenge #269 [Easy] BASIC Formatting
# https://redd.it/4lpygb

require 'pp'

class SpaceCorpFormat

  attr_accessor :input

  def initialize (input)
    @input_array = input.lines
  end

  def get_number_of_lines
    # not really doing anything with this value, but getting it anyways.
    @number_of_lines = @input_array.slice!(0).to_i
  end

  def get_indent_char
    @indent_char = @input_array.slice!(0).to_s.chomp!
  end

  def strip_indentation
    @input_array.each do |line|
      line.lstrip!
    end
  end

=begin
  def indent_input
    @indent = 0
    @input_array.each do |line|
      case line
      when line.include?("IF") || line.include?("FOR")
        puts line.prepend((@indent_char * @indent)); @indent += 1; puts @indent # for debugging
      when line.include?("ENDIF") || line.include?("NEXT")
        @indent -= 1; puts line.prepend((@indent_char * @indent)); puts @indent # for debugging
      else
        puts line.prepend((@indent_char * @indent)); puts @indent # for debugging
      end
    end
  end
=end

  def find_for_blocks
    @input_array.each do | line |
      if line.include?("IF")
        
    }


end


# Create new object.
# Note: input uses actual tabs/spaces, not placeholders.

input = <<EOF
12
    
VAR I
 FOR I=1 TO 31
\t\t\t\tIF !(I MOD 3) THEN
  PRINT "FIZZ"
  \t\tENDIF
\t\t\t\t    IF !(I MOD 5) THEN
\t\t\t\t  PRINT "BUZZ"
  \t\t\t\t\t\tENDIF
\t\t\t\tIF (I MOD 3) && (I MOD 5) THEN
      PRINT "FIZZBUZZ"
  \t\tENDIF
\t\t\t\t NEXT
EOF

doc = SpaceCorpFormat.new(input)
doc.get_number_of_lines
doc.get_indent_char

doc.strip_indentation
pp doc
doc.indent_input

