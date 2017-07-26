require "spec_helper"

RSpec.describe Hand do
  describe ".initialize" do
    it "creates an empty array for hand" do
      deck = Deck.new
      hand = Hand.new
      expect(hand.cards).to eq([])
    end
  end
  describe ".add_cards" do
    it "puts two cards into the hand" do
      deck = Deck.new
      hand = Hand.new
      hand.add_cards(deck.deal_hand!)
      expect(hand.cards.length).to eq(2)
      expect(deck.collection.length).to eq(50)
    end
  end
  describe ".assign_owner" do
    it "assigns the correct owner" do
      deck = Deck.new
      hand = Hand.new
      hand.assign_owner("Player")
      expect(hand.owner).to eq("Player")
    end
  end
  describe ".hit" do
    it "shovels the dealt card into the hand.cards array" do
      deck = Deck.new
      hand = Hand.new
      cards = []
      hand.assign_owner("Player")
      cards = hand.add_cards(deck.deal_hand!)
      cards << hand.hit(deck.draw!)
      expect(hand.cards).to eq(cards)
    end
  end
end
