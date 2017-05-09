require 'spec_helper'
require_relative '../313_easy.rb'

RSpec.describe 'a working subset method' do

  it 'should return true when subset contains zero' do
    set = SubsetSum.new([0, 1, 2])
    expect(set.is_subset?).to be true
  end

  it 'should return true when there are duplicates' do
    set = SubsetSum.new([1, -1, 2])
    expect(set.is_subset?).to be true
  end

  it 'should return false when no duplicates exist in array' do
    set = SubsetSum.new([1, 2, 3])
    expect(set.is_subset?).to be false
  end

end
