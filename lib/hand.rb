class Hand
  attr_reader :cards, :owner, :score
  def initialize
    @cards = []
  end
  def assign_owner(owner)
    @owner = owner
  end
  def add_cards(cards)
    @cards = cards
  end
  def hit!(card)
    @cards << card
    puts "#{@owner.name} was dealt #{cards.last.rank}#{cards.last.suit} !"
    calculate_hand
  end
  def calculate_hand
    @score = @cards.inject(0) { |sum, card|
      if (card.rank == 'J' || card.rank == 'Q' || card.rank == 'K')
        sum += 10
      elsif (card.rank == 'A')
        sum += card.value
        if (sum > 21)
          card.value = 1
          sum -= 10
        end
        sum
      else
        sum += card.value
      end
    }
    if (@score > 21)
      @cards.each do |card|
        if card.rank == 'A' && card.value == 11
          card.value = 1
          @score -= 10
        end
      end
    end
    puts "#{@owner.name} Score: #{@score}"
    if @score > 21
      puts "Bust! #{owner.name} loses..."
      @owner.lost = true
    end
    @score
  end
end
