# [2016-05-30] Challenge #269 [Easy] BASIC Formatting
# https://redd.it/4lpygb

require 'pp'

class SpaceCorpFormat

  attr_accessor :input

  def initialize (input)
    @input_array = input.lines
  end

  def get_number_of_lines
    @number_of_lines = @input_array.slice!(0).to_i
  end

  def get_indent_char
    @indent_char = @input_array.slice!(0).to_s.chomp!
  end

  def strip_indentation

  end

  def indent_input
    indent = 0
    @input_array.each do |line|
      if line.include?(("IF" || "FOR"))
        indent += 1
        puts line.prepend((@indent_char * indent))
      elsif line.include?(("ENDIF" || "NEXT"))
        indent -= 1
        puts line.prepend((@indent_char * indent))
      else
        puts line
      end
    end
  end

end


# Create new object

input = %{12
····
VAR I
·FOR I=1 TO 31
»»»»IF !(I MOD 3) THEN
··PRINT "FIZZ"
··»»ENDIF
»»»»····IF !(I MOD 5) THEN
»»»»··PRINT "BUZZ"
··»»»»»»ENDIF
»»»»IF (I MOD 3) && (I MOD 5) THEN
······PRINT "FIZZBUZZ"
··»»ENDIF
»»»»·NEXT
}

doc = SpaceCorpFormat.new(input)
doc.get_number_of_lines
doc.get_indent_char

pp doc
doc.indent_input

