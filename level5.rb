class Player
  def play_turn(warrior)
    # cool code goes here
    @health = warrior.health unless @health
    if (warrior.feel.empty?) && (warrior.health >= @health)
      if (warrior.health < 20)
        warrior.rest!
      else
        warrior.walk!
      end
    elsif warrior.feel.empty?
        warrior.walk!
    else
        if (warrior.feel.captive?)
          warrior.rescue!
        else
          warrior.attack!
        end
    end
    @health = warrior.health
  end
end
  