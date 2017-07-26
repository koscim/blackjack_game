require_relative "card"
require_relative "deck"
require_relative "hand"
require_relative "player"
require_relative "dealer"

require 'pry'
# deck = Deck.new
# player_hand = Hand.new(deck)
# player_hand.get_hand
# player = Player.new(player_hand)
#
# hit = true
# while hit && player.lost == false do
#   puts "Hit or stand (H/S): "
#   input = gets.chomp.downcase
#   if (input == "h")
#     player.hit
#   elsif (input == "s")
#     player.stand
#     hit = false
#   end
# end
#
# dealer_hand = Hand.new(deck)
# dealer_hand.get_hand
# dealer = Dealer.new(dealer_hand)
#
# while dealer.score < 17  && dealer.lost == false do
#   dealer.hit
# end
#
# if dealer.score > player.score
#   puts "Dealer wins!"
# elsif dealer.score < player.score
#   puts "You win!"
# else
#   puts "It's a tie! Nobody wins!"
# end
player = Player.new
dealer = Dealer.new
# dealer = Dealer.new
deck = Deck.new
player_hand = Hand.new
player_hand.add_cards(deck.deal_hand!)
player_hand.assign_owner(player.name)
# player_hand.deal_hand
player.pick_up_hand(player_hand)

dealer_hand = Hand.new
dealer_hand.add_cards(deck.deal_hand!)
dealer_hand.assign_owner(dealer.name)

player_hand.hit(deck.draw!)
require 'pry'
binding.pry



dealer.turn_over_hand(dealer_hand)
# Your code here...
