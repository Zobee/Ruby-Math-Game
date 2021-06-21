require "./game.rb"
require "./question.rb"
require "./player.rb"

player1 = Player.new("Player 1")
player2 = Player.new("Player 2")

question = Question.new
ans = question.generateQuestion
player1.answer(ans)
puts "Player 1 Lives:"
puts player1.lives
puts "Player 1 Score:"
puts player1.score