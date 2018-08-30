require 'deck'

class Hands
  attr_accessor :hand 
  
  def initialize(num_players)
    @hand = Array.new(num_players){[]} 
  end 
end 