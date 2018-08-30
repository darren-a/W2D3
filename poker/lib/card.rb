class Card
  attr_reader :suit, :value
  VALUES = (1..13).to_a
  SUITS = ["C", "S", "H", "D"]
  def initialize(suit, value)
    raise "Suit not familiar" unless SUITS.include?(suit)
    raise "Value not familiar" unless VALUES.include?(value)
    @suit = suit
    @value = value
  end
  # 
  # def inspect
  #   p "Suit = #{@suit};  Value = #{@value}"
  # end 
  # 
  
end


