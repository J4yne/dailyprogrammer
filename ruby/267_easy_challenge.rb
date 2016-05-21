# [2016-05-16] Challenge #267 [Easy] All the places your dog didn't win
# https://redd.it/4jom3a

# Version 1.0 attempt: uses regexp to match the last numbers.

class DogePlaces

  attr_accessor :my_doge_place, :max_range

  def initialize (my_doge_place, max_range)
    @doge_array = (1..max_range).to_a
    @my_doge_place = my_doge_place
  end

  def delete_my_doge_place
    @doge_array.delete(my_doge_place)
  end

  def print_doges
    @doge_array.each do |place|

      # finds instances of "eleventh"
      if /1[1]$/.match(place.to_s)
        print "#{place}th "

      # finds instances of "twelfth"
      elsif /1[2]$/.match(place.to_s)
        print "#{place}th "

      # find instances of "thirteenth"
      elsif /1[3]$/.match(place.to_s)
        print "#{place}th "

      # finds last ones
      elsif /[1]$/.match(place.to_s)
        print "#{place}st "

      # finds last twos
      elsif /[2]$/.match(place.to_s)
        print "#{place}nd "

      # finds last threes
      elsif /[3]$/.match(place.to_s)
        print "#{place}rd "

      # everything else
      else
        print "#{place}th "
      end
    end
  end
end
    
range = DogePlaces.new(42, 500)
range.delete_my_doge_place
range.print_doges

