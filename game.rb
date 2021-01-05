require './player.rb'

class Game

  attr_accessor :p1, :p2

  def initialize()
    @p1 = Player.new(p1)
    @p2 = Player.new(p2)
    @current_player = @p1
    newTurn = Turn.new
    newTurn.ask
  end

  def player_lives()
    puts "p1 has #{@p1.lives} lives"
    puts "p2 has #{@p2.lives} lives"
  end
end