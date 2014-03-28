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

      it 'should have an image' do
        make_card(value, suit)
        @card.img.should == Card::S3_URLS["#{value.downcase}+#{suit.downcase}"]
      end

      it 'should print neatly' do
        make_card(value, suit)
        @card.to_s.should == "#{value} of #{suit}"
      end
    end

    it 'should fail for an invalid suit' do
      expect { make_card('Ace', 'fake_suit') }.to raise_error
    end

    it 'should fail for an invalid value' do
      expect { make_card('fake_value', 'Spades') }.to raise_error
    end

    Card::SHORT_VALUES.each do |short, long|
      it "should not fail for short value: #{short}" do
        make_card(short, 'Spades')
        @card.value.should == long
      end
    end

    Card::SHORT_SUITS.each do |short, long|
      it "should not fail for short suit: #{short}" do
        make_card('Ace', short)
        @card.suit.should == long
      end
    end
  end
end