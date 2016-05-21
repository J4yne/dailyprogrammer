# [2016-05-16] Challenge #267 [Easy] All the places your dog didn't win
# https://redd.it/4jom3a

# Version 1.1: second attempt.  Uses String Class's 'end_with?' to search for last digits of place number.

class DogePlaces

  attr_accessor :my_dogs_place, :max_range

  def initialize (my_dogs_place, max_range)
    @dog_array = (1..max_range).to_a
    @my_dogs_place = my_dogs_place
  end

  def delete_my_dogs_place
    @dog_array.delete(my_dogs_place)
  end

  def print_all_dogs
    @dog_array.each do |place|
      if place.to_s.end_with?("11") || place.to_s.end_with?("12") || place.to_s.end_with?("13")
        print "#{place}th "
      elsif place.to_s.end_with?("1") 
        print "#{place}st "
      elsif place.to_s.end_with?("2") 
        print "#{place}nd "
      elsif place.to_s.end_with?("3") 
        print "#{place}rd "
      else
        print "#{place}th "
      end
    end
  end
end
    
doge_list = DogePlaces.new(5, 500)
doge_list.delete_my_dogs_place
doge_list.print_all_dogs

