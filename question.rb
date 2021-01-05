class Question

  attr_accessor :firstNum, :secondNum
  
  def initialize()
    @firstNum = rand(1..20)
    @secondNum = rand(1..20)
  end

end