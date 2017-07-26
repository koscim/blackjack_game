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
      player = Player.new
      cards = []
      hand.assign_owner(player)
      cards = hand.add_cards(deck.deal_hand!)
      cards << hand.hit!(deck.draw!)
      expect(hand.cards).to eq(cards)
    end
  end
  describe "#calculate_hand" do
    it "adds up the values of the two cards in the hand" do
      hand = Hand.new
      player = Player.new
      hand.assign_owner(player)
      hand.add_cards([Card.new("10", "♦"), Card.new("J","♥")])
      expect(hand.calculate_hand).to eq(20)
    end
    it "adds 11 instead of 1 to your deck if the sum of the hand is less than 11" do
      new_hand = Hand.new
      player = Player.new
      new_hand.add_cards([Card.new('10',"♦"), Card.new("A","♦")])
      new_hand.assign_owner(player)
      expect(new_hand.calculate_hand).to eq(21)
    end
    it "adds 1 instead of 11 to your deck if the sum of the hand is greater than or equal to 11" do
      new_hand = Hand.new
      player = Player.new
      new_hand.assign_owner(player)
      new_hand.add_cards([Card.new('10',"♦"), Card.new("J","♥")])
      new_hand.hit!(Card.new("A","♦"))
      expect(new_hand.calculate_hand).to eq(21)
    end
    it "adds 1 instead of 11 to your deck if the sum of the hand is greater than or equal to 11" do
      new_hand = Hand.new
      player = Player.new
      new_hand.assign_owner(player)
      new_hand.add_cards([Card.new("A","♦"), Card.new("J","♥"), Card.new('10',"♦")])
      expect(new_hand.calculate_hand).to eq(21)
    end
    it "functions when there is more than one ace" do
      new_hand = Hand.new
      player = Player.new
      new_hand.assign_owner(player)
      new_hand.add_cards([Card.new("A","♦"), Card.new("A","♥")])
      new_hand.hit!(Card.new("10","♥"))
      expect(new_hand.calculate_hand).to eq(12)
    end
  end
end
