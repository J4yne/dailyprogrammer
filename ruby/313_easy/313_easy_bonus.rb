# [2017-05-01] Challenge #313 [Easy] Subset sum
# https://redd.it/68oda5

# challenge with bonus

require 'pp'

class SubsetSum

  attr_accessor :inputset

  def initialize (inputset)
    @inputset = inputset

    # created permutation array
    @perm_array = []
  end

  def create_perm_array
    for i in (2..5)
      x = @inputset.combination(i).to_a
      @perm_array << x
    end
  end


  def is_subset?
    @inputset.map! {|e| e.abs}

    if (@inputset.uniq.length != @inputset.length) || (@inputset.any? {|e| e == 0})
      true
    else
      false
    end
  end

end

#testing
inputset = [1, 2, 3, 4, 5]
test = SubsetSum.new(inputset)
test.create_perm_array
pp test
