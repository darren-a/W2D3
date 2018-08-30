require 'card'
require 'deck'

require "set"

describe 'Card' do 
  let(:card) {Card.new('S', 12)}
  it "has a value and suit" do
    expect(card.value.class).to eq(Integer)
    expect(card.suit.class).to eq(String)
  end 
  
  it "should use the correct suits" do
    expect{(Card.new('J', 12))}.to raise_error("Suit not familiar")
  end
  
  it "should use the correct values" do
    expect{(Card.new('S', 129))}.to raise_error("Value not familiar")
  end
end 

describe 'Deck' do 
  let(:deck) {Deck.new}
  
  it "should have an array of 52 Card Instances" do
    expect(deck.cards.length).to eq(52)
  end
  
  context "checking suits" do 
    the_set = Set.new 
    
    suits = ["H", "C", "D", "S"]
    
    it "should have 4 suits" do 
      deck.cards.each do |i| 
        the_set.add(i.suit)
      end 
      expect(the_set.length).to eq(4)
    end 
    
    
  end 
  
  
  context "checking values" do 
    the_set = Set.new 
    
    values = (1..13).to_a
    
    it "should have 13 values" do 
      deck.cards.each do |i| 
        the_set.add(i.value)
      end 
      expect(the_set.length).to eq(13)
    end 
  end 
  
  
  context "New Round" do 
    it "reshuffles the deck for new round" do
      5.times do 
        deck.cards.pop
      end 
      deck.new_round
      expect(deck.cards.length).to eq(52)
    end 
  end 
  
  # it "will not deal more than 52 cards" do
  #   52.times do 
  #     deck.cards.pop
  #   end 
  #    expect{(deck.cards.pop) }.to raise_error("NoMoreCards Exception") 
  # end 
  
  
  
end 