require "./game.rb"
require "./player.rb"

player1 = Player.new("Player 1")
player2 = Player.new("Player 2")

puts player1.name
puts player1.lives
puts player2.name
puts player2.lives

player1.answer(15)
puts "Player 1 Current score"
puts player1.score
puts "Player 1 Current lives"
puts player1.lives