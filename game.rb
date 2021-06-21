class Game
  def initialize
    @curr_turn = 1
    @winner = nil
  end

  def assignWinner(winner)
    @winner = winner
  end

  def startGame(player1, player2, question)
    puts "GAME START"
    winner = nil
    #Game loop
    while player1.lives > 0 && player2.lives > 0
      if @curr_turn == 1
        puts "#{player1.name}'s turn:"
        newQ = question.generateQuestion
        player1.answer(newQ)
        if(player1.lives == 0)
          self.assignWinner(player2)
        end
        @curr_turn = 2
      elsif @curr_turn == 2
        puts "#{player2.name}'s turn:"
        newQ = question.generateQuestion
        player2.answer(newQ)
        if(player2.lives == 0)
          self.assignWinner(player1)
        end
        @curr_turn = 1
      end
      puts "#{player1.name}: #{player1.lives}/3 vs #{player2.name} #{player2.lives}/3"
    end
    puts "GAME END #{@winner.name} wins with a score of #{@winner.score} correct answers!"
  end
end