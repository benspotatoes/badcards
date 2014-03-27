require 'spec_helper'

describe Hand do
  describe 'drawing cards' do
    describe 'manual' do
      describe 'single' do
        before(:all) do
          make_deck(6)
          make_hand
        end
        it 'should add the card(s) to the hand' do
          new_card = @deck.peek
          @hand.add_card(@deck.draw)
          @hand.cards.count.should == 1
          @hand.cards.should include(new_card)
        end
      end

      describe 'multiple' do
        before(:all) do
          make_deck(6)
          make_hand
        end
        it 'should add the card(s) to the hand' do
          @hand.add_cards(@deck.draw(5))
          @hand.cards.count.should == 5
        end
      end
    end

    describe 'automatic' do
      describe 'single' do
        before(:all) do
          make_deck(6)
          make_hand
        end
        it 'should add the card(s) to the hand' do
          new_card = @deck.peek
          @deck.draw(1, @hand)
          @hand.cards.count.should == 1
          @hand.cards.should include(new_card)
        end
      end

      describe 'multiple' do
        before(:all) do
          make_deck(6)
          make_hand
        end
        it 'should add the card(s) to the hand' do
          @deck.draw(5, @hand)
          @hand.cards.count.should == 5
        end
      end
    end
  end
end