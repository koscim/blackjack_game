class Player
  attr_reader :name, :hand, :score
  attr_accessor :lost
  def initialize
    @name = "Player"
    @hand = []
    @score = 0
    @lost = false
  end
  def pick_up_hand(hand)
    @hand = hand
    puts "Player was dealt #{hand.cards[-1].rank}#{hand.cards[-1].suit} !"
    puts "Player was dealt #{hand.cards[-2].rank}#{hand.cards[-2].suit} !\n\n"
    hand.calculate_hand
  end
  def stand
    puts "Player stands!"
    hand.calculate_hand
  end
end
