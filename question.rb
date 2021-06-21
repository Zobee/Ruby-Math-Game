class Question
  def generateQuestion
    #A new math question is generated for each turn by picking two numbers between 1 and 20.
    num1 = rand(20) + 1
    num2 = rand(20) + 1
    puts "What is #{num1} + #{num2}?"
    num1 + num2
  end
end