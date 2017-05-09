# [2017-05-01] Challenge #313 [Easy] Subset sum
# https://redd.it/68oda5

# base challenge -- with class

class SubsetSum

  attr_accessor :inputset

  def initialize (inputset)
    @inputset = inputset
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

