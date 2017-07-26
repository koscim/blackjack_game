class Deck
  attr_reader :collection
  SUITS = ['♠️', '♦️', '♣️', '♥️']
  VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
  def initialize
    @collection = []
    SUITS.each do |suit|
      VALUES.each do |value|
        @collection << Card.new(value, suit)
      end
    end
    @collection.shuffle!
  end
  def draw!
    @collection.shift
  end
  def deal_hand!
    cards = []
    2.times do
      cards << draw!
    end
    cards
  end
end
