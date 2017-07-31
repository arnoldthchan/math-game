# Player 1: What does 5 plus 3 equal?
# > 9
# Player 1: Seriously? No!
# P1: 2/3 vs P2: 3/3
# ----- NEW TURN -----
# Player 2: What does 2 plus 6 equal?
# > 8
# Player 2: YES! You are correct.
# P1: 2/3 vs P2: 3/3
# ----- NEW TURN -----
# ... some time later ...
# Player 1 wins with a score of 1/3
# ----- GAME OVER -----
# Good bye!

class Player
  def initialize id
    @life = 3
    @id = id
  end

  def lose_life
    @life -= 1
    p "LIFE LOST"
    p @life
  end

  def self.life
    @life
  end
  def id
    @id
  end
end

class Question
  def ask player
    num1 = rand(5)
    num2 = rand(5)
    p "P#{player.id}: What does #{num1} plus #{num2} equal?"
    @answer = num1 + num2
    @guess = $stdin.gets.chomp.to_i
    if (@answer == @guess)
      p "P#{player.id}: YES! You are correct."
    else
      p "P#{player.id}: Seriously? No!"
      p player.lose_life
    end
  end
end

class Game

  def initialize
    @turns = 1
    @player1 = Player.new 1
    @player2 = Player.new 2
    start_round
  end

  def start_round
    question1 = Question.new
    while
      p "TURN ##{@turns}"
      if (@turns % 2 == 1 )
        question1.ask @player1
      else
        question1.ask @player2
      end
      @turns += 1
    end
  end
  def game_over
    p "GAME OVER"
  end
end

game = Game.new
