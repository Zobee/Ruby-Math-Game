require "./game.rb"
require "./question.rb"
require "./player.rb"

print "Player 1's name: "
player1 = Player.new(gets.chomp)

print "Player 2's name: "
player2 = Player.new(gets.chomp)

game = Game.new
game.startGame(player1, player2)