# [2016-06-13] Challenge #271 [Easy] Critical Hit
# https://redd.it/4nvrnx

class CriticalHit

  attr_accessor :die, :hp

  def initialize (die, hp)
    @die = die
    @hp = hp
  end

  def chance_of_kill(die, hp)
    if hp <= die
      (die + 1 - hp) / die
    else
      chance_of_kill (die, (hp - die))
    end
  end

end

odds = CriticalHit.new(4, 1)
print odds

