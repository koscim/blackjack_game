# class Player
#   attr_reader :hand, :score, :lost
#   def initialize(hand)
#     @hand = hand
#     @score = hand.cards[-1].value + hand.cards[-2].value
#     # puts "Player was dealt #{hand.cards[-1].rank}#{hand.cards[-1].suit} !"
#     # puts "Player was dealt #{hand.cards[-2].rank}#{hand.cards[-2].suit} !\n\n"
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
#     puts "Player was dealt #{hand.cards.last.rank}#{hand.cards.last.suit} !"
#     score?
#   end
#   def stand
#     puts "Player stands!"
#   end
#   def score?
#     puts "Player score: #{score}\n\n"
#     if score > 21
#       puts "Bust! You lose..."
#       @lost = true
#     end
#   end
# end
class Player
  attr_reader :name, :hand, :score
  def initialize
    @name = "Player"
    @hand = []
    @score = 0
  end
  def pick_up_hand(hand)
    @hand = hand
    puts "Player was dealt #{hand.cards[-1].rank}#{hand.cards[-1].suit} !"
    puts "Player was dealt #{hand.cards[-2].rank}#{hand.cards[-2].suit} !\n\n"
  end
  def stand
    puts "Player stands!"
  end

end
