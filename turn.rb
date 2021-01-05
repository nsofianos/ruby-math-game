require './player.rb'

class Turn

  attr_accessor :firstNum, :secondNum

  def initialize()
    puts "----NEW TURN----"
    @firstNum = rand(1..20)
    @secondNum = rand(1..20)
  end

  def validate(answer, firstnum, secondnum)
    if (firstnum + secondnum) == answer
      puts "YES! That's correct."
    else 
      puts "Seriously? No!"
    end
  end

  def ask()
    puts "#{}: What does #{@firstNum} plus #{@secondNum} equal?"
    answer = gets.chomp.to_i
    self.validate(answer, @firstNum, @secondNum)
  end


end