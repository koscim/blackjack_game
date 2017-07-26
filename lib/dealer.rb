# class Dealer
#   attr_reader :hand, :score, :lost
#   def initialize(hand)
#     @hand = hand
#     @score = hand.cards[-1].value + hand.cards[-2].value
#     puts "Dealer was dealt #{hand.cards[-1].rank}#{hand.cards[-1].suit} !"
#     puts "Dealer was dealt #{hand.cards[-2].rank}#{hand.cards[-2].suit} !\n\n"
#     score?
#     @lost = false
#   end
#   def hit
#     hand.hit
#     if (score >= 11 && hand.cards.last.rank == "A")
#       @score += 1
#     else
#       @score += hand.cards.last.value
#     end
#     puts "Dealer was dealt #{hand.cards.last.rank}#{hand.cards.last.suit} !"
#     score?
#   end
#   def stand
#     puts "Dealer stands!"
#   end
#   def score?
#     puts "Dealer score: #{score}\n\n"
#     if score > 21
#       puts "Bust! Dealer loses..."
#       @lost = true
#     end
#   end
# end
class Dealer
  attr_reader :name, :hand, :score
  def initialize
    @name = "Dealer"
    @hand = []
    @score = 0
  end
  def turn_over_hand(hand)
    @hand = hand
    puts "Dealer was dealt #{hand.cards[-1].rank}#{hand.cards[-1].suit} !"
    puts "Dealer was dealt #{hand.cards[-2].rank}#{hand.cards[-2].suit} !\n\n"
  end
  def hit
    hand.hit
    puts "Player was dealt #{hand.cards.last.rank}#{hand.cards.last.suit} !"
  end
  def stand
    puts "Player stands!"
  end

end
