require './player.rb'

class Turn

  attr_accessor :firstNum, :secondNum

  def initialize()
    @firstNum = rand(1..20)
    @secondNum = rand(1..20)
  end

  def validate(answer, firstNum, secondNum)
    if (firstNum + secondNum) == answer
      return true
    else 
      return false
    end
  end

  def ask(currentPlayer)
    puts "#{currentPlayer.name}: What does #{@firstNum} plus #{@secondNum} equal?"
    answer = gets.chomp.to_i
    if self.validate(answer, @firstNum, @secondNum)
      puts "YES! That's correct."
    else
      puts "Seriously? No!"
      currentPlayer.lives -= 1
    end
  end


end