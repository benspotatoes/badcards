require 'spec_helper'

def card_iterator
  Card::SUITS.each do |suit|
    Card::VALUES.each do |value|
      yield suit, value
    end
  end
end

describe Card do
  describe 'values' do
    card_iterator do |suit, value|
      @card = Card.create!(suit, value)

      it 'should return the appropriate suit' do
        @card.suit.should == suit
      end

      it 'should return the appropriate value' do
        @card.value.should == value
      end
    end
  end
end