require 'spec_helper'

def card_iterator
  Card::SUITS.each do |suit|
    Card::VALUES.each do |value|
      yield suit, value
    end
  end
end

describe Deck do
  describe 'creation' do
    describe 'defaults' do
      @deck = Deck.create!

      it 'should create a deck with 52 cards' do
        @deck.size.should == 52
      end

      it 'should have every single combination of card suit and value' do
        found_cards = []
        @deck.cards.each do |card|
          card_iterator do |suit, value|
            @match = ((card.suit == suit) && (card.value == value))
            if @match
              break
            end
          end
          if @match
            found_cards << true
            next
          else
            found_cards << false
          end
        end
      end
    end

    describe 'custom' do
      it 'should create a specific deck size' do
        custom_size = 6
        @deck = Deck.create!(custom_size)
        @deck.size.should == custom_size * 52
      end
    end
  end

  describe 'operation' do
    describe 'shuffling' do
      pending('can this be tested?')
    end

    describe 'drawing' do
      @deck_size = 6
      @card_count = @deck_size * 52
      @deck = Deck.create!(@deck_size)

      describe 'peek' do
        it 'should return the first card in the deck' do
          top_card = @deck.peek
          top_card.should == @deck.cards.first
        end

        it 'should not draw a card from the deck' do
          top_card = @deck.peek
          @deck.cards.count.should == @card_count
        end
      end

      describe 'single' do
        it 'should return a single card' do
          new_card = @deck.draw
          @deck.cards.count.should == @card_count - 1
        end
      end

      describe 'multiple' do
        it 'should return an array of cards' do
          draw_count = 5
          new_cards = @deck.draw(draw_count)
          new_cards.class.should == Array
          @deck.cards.count.should == @card_count - draw_count
        end
      end

      describe 'limit' do
        it 'should return all possible cards if there are not enough cards' do
          @new_deck = Deck.create!
          @deck.draw(51)
          @deck.cards.count.should == @card_count - 51
          new_cards = @deck.draw(5)
          @deck.cards.count.should == 0
          new_cards.class.should == Card
        end

        it 'should return nil if there are no more cards' do
          @new_deck = Deck.create!
          @deck.draw(52)
          @deck.cards.count.should == 0
          new_cards = @deck.draw(5)
          @deck.cards.count.should == 0
          new_cards.should == nil
        end
      end
    end
  end
end
