require "./game.rb"
require "./question.rb"
require "./player.rb"


player1 = Player.new("Player 1")
player2 = Player.new("Player 2")

game = Game.new
game.startGame(player1, player2)