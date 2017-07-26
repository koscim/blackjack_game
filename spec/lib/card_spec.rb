require "spec_helper"

RSpec.describe Card do
  describe ".initialize" do
    it "creates a card with the correct rank and suit" do
      card = Card.new('2', '♠️')
      expect(card.rank).to eq('2')
      expect(card.suit).to eq('♠️')
    end
  end
  describe ".face_card?" do
    it "returns true when a card is a face card" do
      card = Card.new('K', '♠️')
      expect(card.face_card?).to eq(true)
      expect(card.value).to eq(10)
    end
    it "returns false when a card is not a face card" do
      card = Card.new('2', '♠️')
      expect(card.face_card?).to eq(false)
    end
  end
  describe ".ace?" do
    it "rerturns true when a card is an ace" do
      card = Card.new('A', '♠️')
      expect(card.ace?).to eq(true)
      expect(card.value).to eq(11)
    end
    it "returns false when a card is not an ace" do
      card = Card.new('2', '♠️')
      expect(card.ace?).to eq(false)
    end
  end
end
