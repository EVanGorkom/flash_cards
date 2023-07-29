class Deck
  attr_reader :cards, :count
  
  def initialize(cards = [])
    @cards = cards
    @count = @cards.length
  end

  def cards_in_category(category)
    cards_with_category = []
    @cards.each do |card|
      cards_with_category << card if card.category == category
    end
    cards_with_category
  end
end