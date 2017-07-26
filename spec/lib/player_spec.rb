require "spec_helper"

RSpec.describe Deck do
  describe ".initialize" do
    it "initializes the player object" do
      player = Player.new
      expect(player.name).to eq("Player")
      expect(player.hand).to eq([])
      expect(player.score).to eq(0)
      expect(player.lost).to eq(false)
    end
  end
  describe ".pick_up_hand" do
    it "stores a hand in the Player class" do
      deck = Deck.new
      hand = Hand.new
      player = Player.new
      hand.assign_owner(player)
      hand.add_cards(deck.deal_hand!)
      player.pick_up_hand(hand)
      expect(player.hand).to eq(hand)
    end
  end
end
