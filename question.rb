class Question
  def ask player
    num1 = rand(20)
    num2 = rand(20)
    @answer = num1 + num2
    p "P#{player.id}: What does #{num1} plus #{num2} equal?"
    @guess = gets.chomp.to_i
    if (@answer == @guess)
      p "P#{player.id}: YES! You are correct."
    else
      p "P#{player.id}: Seriously? No!"
      player.lose_life
    end
  end
end