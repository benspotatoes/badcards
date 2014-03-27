require 'spec_helper'

describe Card do
  describe 'values' do
    Card.all_cards do |value, suit|
      it 'should return the appropriate suit' do
        make_card(value, suit)
        @card.suit.should == suit
      end

      it 'should return the appropriate value' do
        make_card(value, suit)
        @card.value.should == value
      end
    end
  end
end