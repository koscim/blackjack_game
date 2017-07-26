require_relative "card"
require_relative "deck"
require_relative "hand"
require_relative "player"
require_relative "dealer"

player = Player.new
dealer = Dealer.new

deck = Deck.new
player_hand = Hand.new
player_hand.add_cards(deck.deal_hand!)
player_hand.assign_owner(player)
player.pick_up_hand(player_hand)

dealer_hand = Hand.new
dealer_hand.add_cards(deck.deal_hand!)
dealer_hand.assign_owner(dealer)

player_turn = true
while player_turn && player_hand.score <= 21 do
  puts "Hit or stand (H/S): "
  input = gets.chomp.downcase
  if (input == "h")
    player_hand.hit!(deck.draw!)
  elsif (input == "s")
    player.stand
    player_turn = false
  end
end
if player.lost == false
  dealer.turn_over_hand(dealer_hand)
  while dealer_hand.score < 17  && dealer.lost == false do
    dealer_hand.hit!(deck.draw!)
  end
  dealer.stand
  if dealer_hand.score > player_hand.score
    puts "Dealer wins!"
  elsif dealer_hand.score < player_hand.score
    puts "You win!"
  else
    puts "It's a tie! Nobody wins!"
  end
end
