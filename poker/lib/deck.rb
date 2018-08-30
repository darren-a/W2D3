require_relative "card.rb"


class Deck
  
  SUITS = ["C", "S", "H", "D"]
  attr_accessor :cards 
  
  def initialize
    @cards = fill_cards.shuffle
  end 
  
  
  def fill_cards
    res = []
    
    (1..13).each do |i|
      (0..3).each do |j|
        res << Card.new(SUITS[j], i)
      end 
    end 
    res
  end 
  
  def new_round 
    @cards = fill_cards.shuffle 
  end
  
  # 
  # def deal_cards(num_cards)
  # 
  # end 


end 
