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

  def print_doc
    @input_array.each { |line| puts line }
  end

  # updates array elements in place
  def indent_input
    @indent = 0
    @input_array.each do |line|
        if line.start_with?("NEXT", "ENDIF")
          @indent -= 1
          yield
          next
        end
        if line.start_with?("FOR", "IF")
          @indent =+ 1
        end
    end
  end

  # block for indent_input method
  indent_input { |line| line.prepend(@indent_char * @indent) }
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

doc.indent_input
pp doc

