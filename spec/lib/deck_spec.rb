require "spec_helper"

RSpec.describe Deck do
  let (:deck) { Deck.new }
  describe ".initialize" do
    it "creates a deck of 52 cards" do
      expect(deck.collection.length).to eq(52)
    end
  end
  describe ".draw!" do
    it "removes one card from the deck" do
      last_card = deck.collection[0]
      card = deck.draw!
      expect(deck.collection.length).to eq(51)
      expect(card).to eq(last_card)
    end
  end
  # Your tests here
end
