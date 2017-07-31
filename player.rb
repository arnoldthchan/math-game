class Player
  attr_accessor :id
  def initialize id
    @life = 1
    @id = id
  end

  def lose_life
    @life -= 1
    if @life == 0
      puts "GAME OVER"
      # game.game_over
    end
  end

  def life
    "#{@life}/3"
  end

  def id
    @id
  end
end