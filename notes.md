Nouns:
Game
  --Game is the main file. It should be the main file that's run to start the game
  It will create instances of player 1 and player 2, determine whose turn it is, and 
  generate a question. It should keep track of who the current_player is

  State: 
  Behaviour:
  Methods: start_game (initialize two players, and send questions to them back and forth while both players still have lives )

  Player
  --Player is the user answering questions. It should keep track of it's lives, its score (num correct answers), and take the user input of the player
    State: lives (3)
    Behaviour:
    Methods:
  problem/question
  --The math problem. It should generate a random math question that is provided to the player
    State: 
    Behaviour:
    Methods: