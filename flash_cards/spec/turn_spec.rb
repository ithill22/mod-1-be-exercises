require 'rspec'
require './lib/turn'
require './lib/card'

RSpec.describe Turn do
  it 'exists' do
    card = Card.new('What is the capital of Alaska?', 'Juneau', :Geography)
    turn = Turn.new('Juneau', card)
    expect(turn).to be_instance_of(Turn)
  end

  it 'has a guess' do
    card = Card.new('What is the aprical of Alaska?', 'Juneau', :Georgraphy)
    turn = Turn.new('Juneau', card)
    expect(turn.guess).to eq('Juneau')
  end

  it 'it is true' do
    card = Card.new('What is the aprical of Alaska?', 'Juneau', :Georgraphy)
    turn = Turn.new('Juneau', card)
    expect(turn.correct?).to eq(true)
  end

  it 'it is correct' do
    card = Card.new('What is the aprical of Alaska?', 'Juneau', :Georgraphy)
    turn = Turn.new('Juneau', card)
    expect(turn.feedback).to eq("Correct!")
  end

end