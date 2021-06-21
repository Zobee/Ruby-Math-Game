class Player
  attr_reader :name, :lives, :score
  def initialize(name)
    @name = name
    @lives = 3
    @score = 0
  end
  def printScoreLives
    puts "Score: #{score} Lives: #{lives}"
  end
  def answer(expectedAnswer)
    puts expectedAnswer
    puts "What will happen??"
    userAnswer = gets.chomp.to_i
    if userAnswer == expectedAnswer
      puts "CORRECT!"
      @score = @score + 1
      self.printScoreLives
    else 
      puts "WRONG!"
      @lives = @lives - 1
      self.printScoreLives
    end
  end
end