require 'spec_helper'

def card_iterator
  Card::SUITS.each do |suit|
    Card::VALUES.each do |value|
      yield suit, value
    end
  end
end

describe Hand do
  describe 'drawing cards' do
    @deck = Deck.create!(6)

    describe 'manual' do
      describe 'single' do
        @hand = Hand.create!

        it 'should add the card(s) to the hand' do
          new_card = @deck.peek
          @hand.add_card(@deck.draw)
          @hand.cards.count.should == 1
          @hand.cards.should include(new_card)
        end
      end

      describe 'multiple' do
        @hand = Hand.create!

        it 'should add the card(s) to the hand' do
          @hand.add_cards(@deck.draw(5))
          @hand.cards.count.should == 5
        end
      end
    end

    describe 'automatic' do
      describe 'single' do
        @hand = Hand.create!

        it 'should add the card(s) to the hand' do
          new_card = @deck.peek
          @deck.draw(1, @hand)
          @hand.cards.count.should == 1
          @hand.cards.should include(new_card)
        end
      end

      describe 'multiple' do
        @hand = Hand.create!

        it 'should add the card(s) to the hand' do
          @deck.draw(5, @hand)
          @hand.cards.count.should == 5
        end
      end
    end
  end
end