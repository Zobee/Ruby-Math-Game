class Game
  def initialize
    @curr_turn = 1
    @winner = nil
    @question = Question.new
  end

  def assignWinner(winner)
    @winner = winner
  end

  def promptPlayer(player)
    puts "#{player.name}'s turn:"
    newQ = @question.generateQuestion
    player.answer(newQ)
  end

  def startGame(player1, player2)
    puts "GAME START"
    winner = nil
    #Game loop
    while player1.lives > 0 && player2.lives > 0
      if @curr_turn == 1
        self.promptPlayer(player1)
        if(player1.lives == 0)
          self.assignWinner(player2)
        end
        @curr_turn = 2
      else
        self.promptPlayer(player2)
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