require_relative 'player'

class Game
  attr_reader :player_1, :player_2, :current_turn, :attacker, :defender, :first_turn

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @first_turn = true
    @attacker = player_1
    @defender = player_2
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def attack
    @defender.reduce_points
    @first_turn = false
  end

  def switch_turns
    @attacker, @defender = @defender, @attacker
  end
end
