class Deck
  def self.build

  end
end

class CardGame
  attr_reader :cards

  def start
    @cards = Deck.build
  end
end

RSpec.describe CardGame do
  it 'can only implement class methods that defined on a class' do
    class_double(Deck, build: ['Ace', 'Queen'])
  end
end
