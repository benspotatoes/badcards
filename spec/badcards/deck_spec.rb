require 'spec_helper'

describe Deck do
  describe 'creation' do
    describe 'defaults' do
      before(:all) do
        make_deck
      end

      it 'should create a deck with 52 cards' do
        @deck.size.should == 52
      end

      it 'should have every single combination of card suit and value' do
        found_cards = []
        @deck.cards.each do |card|
          Card.all_cards do |value, suit|
            @match = ((card.suit == suit) && (card.value == value))
            if @match
              break
            end
          end
          if @match
            found_cards << true
            next
          end
        end
        found_cards.all?.should == true
        found_cards.count.should == 52
      end
    end

    describe 'custom' do
      it 'should create a specific deck size' do
        custom_size = 6
        @deck = Deck.new(custom_size)
        @deck.size.should == custom_size * 52
      end
    end
  end

  describe 'operation' do
    describe 'shuffling' do
      it 'should not fail' do
        @deck = Deck.new
        @deck.shuffle
      end
    end

    describe 'drawing' do
      describe 'peek' do
        before(:all) do
          @deck_size = 6
          @card_count = @deck_size * 52
          make_deck(@deck_size)
          make_hand
        end

        it 'should return the first card in the deck' do
          top_card = @deck.peek
          top_card.should == @deck.cards.first
        end

        it 'should not draw a card from the deck' do
          top_card = @deck.peek
          @deck.cards.count.should == @card_count
        end

        it 'should return multiple cards when specified' do
          num_to_peek = 5
          top_cards = @deck.peek(num_to_peek)
          top_cards.count.should == num_to_peek
        end
      end

      describe 'single' do
        before(:all) do
          @deck_size = 6
          @card_count = @deck_size * 52
          make_deck(@deck_size)
          make_hand
        end

        it 'should return a single card' do
          new_card = @deck.draw
          @deck.cards.count.should == @card_count - 1
        end
      end

      describe 'multiple' do
        before(:all) do
          @deck_size = 6
          @card_count = @deck_size * 52
          make_deck(@deck_size)
          make_hand
        end

        it 'should return an array of cards' do
          draw_count = 5
          new_cards = @deck.draw(draw_count)
          new_cards.class.should == Array
          @deck.cards.count.should == @card_count - draw_count
        end
      end

      describe 'limit' do
        it 'should return all possible cards if there are not enough cards' do
          @new_deck = Deck.new
          @num_to_draw = 51
          @new_deck.draw(@num_to_draw)
          @new_deck.cards.count.should == 52 - @num_to_draw
          new_cards = @new_deck.draw(5)
          @new_deck.cards.count.should == 0
          new_cards.class.should == Card
        end

        it 'should return nil if there are no more cards' do
          @new_deck = Deck.new
          @new_deck.draw(52)
          @new_deck.cards.count.should == 0
          new_cards = @new_deck.draw(5)
          @new_deck.cards.count.should == 0
          new_cards.should == nil
        end
      end
    end
  end
end
