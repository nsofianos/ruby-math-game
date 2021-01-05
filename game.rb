require './player.rb'

class Game

  attr_accessor :p1, :p2

  def initialize()
    @p1 = Player.new("Player1")
    @p2 = Player.new("Player2")
    @current_player = @p1
  end

  def print_score
    puts "P1: #{@p1.lives}/3 vs P2: #{@p2.lives}/3"
  end

  def game_over
    puts "#{@current_player.name} wins with a score of #{@current_player.lives}/3"
    puts "----GAME OVER----"
    puts "Thanks for playing!"
  end
  
  def change_player
    if @current_player == @p1
      @current_player = @p2
    else
      @current_player = @p1
    end
  end

  def new_turn()
    puts "----NEW TURN----"
    newTurn = Turn.new
    newTurn.ask(@current_player)
    self.print_score
    if @current_player.lives == 0
      self.change_player
      self.game_over
    else
      self.change_player
      self.new_turn
    end
  end

end