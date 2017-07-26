class Hand
  attr_reader :cards, :owner
  def initialize
    @cards = []
  end
  def assign_owner(owner)
    @owner = owner
  end
  def add_cards(cards)
    @cards = cards
  end
  def hit(card)
    @cards << card
    puts "#{@owner} was dealt #{cards.last.rank}#{cards.last.suit} !"
  end
end
