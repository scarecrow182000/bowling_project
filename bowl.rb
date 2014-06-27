# bowl.rb

class Game

@rolls = []

  def score
    score = 0
    first_ball = 0
    frame = 0
    while frame < 10
      if strike?(first_ball)
        score += 10 + strike_bonus_balls(first_ball)
        first_in_frame +=1
      elsif spare?(first_ball)
        score += 10 + spare_bonus_ball(first_ball)
        first_ball += 2
      else
      score += two_balls_in_frame(first_ball)
      first_ball += 2
      end
    frame +=1
    end
    score
  end

  def strike?(first_ball)
    @rolls[first_in_frame] == 10
  end

  def spare?(first_bal)
    @rolls[first_ball] + @rolls[first_ball + 1] == 10
  end

  def strike_bonus_balls(first_ball)
    @rolls[first_ball + 1] + @rolls[first_ball + 2]
  end

  def spare_bonus_ball(first_ball)
    @rolls[first_ball + 2]
  end

  def two_balls_in_frame(first_ball)
    @rolls[first_ball] + @rolls[first_ball + 1]
  end

end
