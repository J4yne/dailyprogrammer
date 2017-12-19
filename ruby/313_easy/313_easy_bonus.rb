# [2017-05-01] Challenge #313 [Easy] Subset sum
# https://redd.it/68oda5

# challenge with bonus

require 'pp'

class SubsetSum

  attr_accessor :inputset

  def initialize (inputset)
    @inputset = inputset
    @perm_array = []
  end

  def create_perm_array
    for i in (2..@inputset.length)
      x = @inputset.combination(i).to_a
      @perm_array << x
    end
    @perm_array.flatten!(1)
  end

  def calculate_sums
    @perm_array.each do |i|
      if @perm_array[i].sum == 0
        puts "true"
      else
        puts "false"
      end
    end
  end

end

#testing
inputset = [1, 2, 3, 4, 5]
test = SubsetSum.new(inputset)
test.create_perm_array
test.calculate_sums

