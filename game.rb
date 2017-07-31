class Game

  def initialize
    @turns = 1
    @player1 = Player.new 1
    @player2 = Player.new 2
    start_round
  end

  def start_round
    question1 = Question.new
    winner = nil
    while !winner
      p "TURN ##{@turns}"
      if (@turns % 2 == 1 )
        question1.ask @player1
        show_score
      else
        question1.ask @player2
        show_score
      end
      @turns += 1
    end
  end

  def show_score
    p "P1: #{@player1.life} vs. P2: #{@player2.life}"
    puts
  end

  def game_over
    p "GAME OVER"
    p " IS A LOSER WHO LOST"
  end
end