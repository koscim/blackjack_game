class Dealer
  attr_reader :name, :hand, :score
  attr_accessor :lost
  def initialize
    @name = "Dealer"
    @hand = []
    @score = 0
    @lost = false
  end
  def turn_over_hand(hand)
    @hand = hand
    puts "Dealer was dealt #{hand.cards[-1].rank}#{hand.cards[-1].suit} !"
    puts "Dealer was dealt #{hand.cards[-2].rank}#{hand.cards[-2].suit} !\n\n"
    hand.calculate_hand
  end
  def stand
    puts "Dealer stands!"
    hand.calculate_hand
  end
end
