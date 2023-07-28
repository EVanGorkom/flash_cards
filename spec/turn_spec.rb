require './lib/card'
require './lib/turn'

RSpec.describe Turn do
  it 'exists' do
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card_1)

    expect(turn).to be_instance_of(Turn)
  end

  it "has a card" do
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("Which planet is closest to the sun?", "Mercury", :STEM)
    turn_1 = Turn.new("Juneau", card_1)
    turn_2 = Turn.new("Saturn", card_2)

    expect(turn_1.card).to eq(card_1)
    expect(turn_2.card).to eq(card_2)
    expect(turn_1.card).to be_a(Card)
    expect(turn_2.card).to be_a(Card)
  end

  it "has a user's guess" do
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("Which planet is closest to the sun?", "Mercury", :STEM)
    turn_1 = Turn.new("Juneau", card_1)
    turn_2 = Turn.new("Saturn", card_2)

    expect(turn_1.guess).to eq("Juneau")
    expect(turn_2.guess).to eq("Saturn")
  end

  it "can tell if the guess was correct" do
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("Which planet is closest to the sun?", "Mercury", :STEM)
    turn_1 = Turn.new("Juneau", card_1)
    turn_2 = Turn.new("Saturn", card_2)

    expect(turn_1.correct?).to be true
    expect(turn_2.correct?).to be false
  end

  it "can return feedback about a guess" do
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("Which planet is closest to the sun?", "Mercury", :STEM)
    turn_1 = Turn.new("Juneau", card_1)
    turn_2 = Turn.new("Saturn", card_2)

    expect(turn_1.feedback).to eq("Correct!")
    expect(turn_2.feedback).to eq("Incorrect.")
  end
end