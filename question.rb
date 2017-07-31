class Question
  def ask_question player
    num1 = rand(20)
    num2 = rand(20)
    @answer = num1 + num2
    puts "P#{player.id}: What does #{num1} plus #{num2} equal?"
    @guess = gets.chomp.to_i
    if (@answer == @guess)
      puts "P#{player.id}: YES! You are correct."
    else
      puts "P#{player.id}: Seriously? No!"
      player.lose_life player
    end
  end
end