require './lib/card'
require './lib/turn'

RSpec.describe Turn do
  it 'exists' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)

    expect(turn).to be_instance_of(Turn)
  end

  it "has a card" do
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card_1)

    expect(turn.card).to eq(card_1)
    expect(turn.card).to be_a(Card)
  end

  it "has a user's guess" do
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card_1)

    expect(turn.guess).to eq("Juneau")
  end

  it "can tell if the guess was correct" do
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card_1)

    expect(turn.correct?).to be true
  end

  it "can return feedback about a guess" do
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card_1)

    expect(turn.feedback).to eq("Correct!")
  end
end