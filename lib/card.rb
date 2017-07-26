class Card
  attr_reader :rank, :suit, :value
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
    if face_card?
      @value = 10
    elsif ace?
      @value = 11
    else
      @value = rank.to_i
    end
  end
  def face_card?
    ['J', 'Q', 'K'].include?(@rank)
  end
  def ace?
    ['A'].include?(@rank)
  end
end
