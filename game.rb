class Game
  def initialize
    @curr_turn = 1
  end

  def startGame(player1, player2, question)
    puts "GAME START"
    winner = nil
    #Game loop
    while player1.lives > 0 && player2.lives > 0
      if @curr_turn == 1
        puts "#{player1.name}'s turn:"
        player1.answer(15)
        puts("Lives Remaining:")
        puts(player1.lives)
        @curr_turn = 2
      elsif @curr_turn == 2
        puts "#{player2.name}'s turn:"
        player2.answer(15)
        puts("Lives Remaining:")
        puts(player2.lives)
        @curr_turn = 1
      end
    end
    puts "GAME END #{winner} wins"
  end
end