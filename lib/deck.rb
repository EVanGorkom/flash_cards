class Deck
  attr_reader :cards, :count
  
  def initialize(cards = [])
    @cards = cards
    @count = @cards.length
    require 'pry';binding.pry
  end

  def cards_in_category
    
  end
end