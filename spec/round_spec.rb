require './lib/card'
require './lib/turn'
require './lib/deck'
require './lib/round'

RSpec.describe Deck do
  before (:each) do
    @card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    @card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    @card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    # @cards = [@card_1, @card_2, @card_3]
    @deck = Deck.new([@card_1, @card_2, @card_3])
    @round = Round.new(@deck)
  end

  it "can initialize" do
    expect(@round).to be_an_instance_of Round
  end

  it "has readable attributes" do
    expect(@round.deck).to eq(@deck)
    expect(@round.turns).to eq([])
    expect(@round.current_card).to eq(@card_1)
  end
end