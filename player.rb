class Player
  attr_reader :name, :lives, :score
  def initialize(name)
    @name = name
    @lives = 3
    @score = 0
  end
  def answer(expectedAnswer)
    puts expectedAnswer
    puts "What will happen??"
    userAnswer = gets.chomp.to_i
    if userAnswer == expectedAnswer
      puts "CORRECT!"
      @score = @score.to_i + 1
    else 
      puts "WRONG!"
      @lives = @lives.to_i - 1
    end
  end
end