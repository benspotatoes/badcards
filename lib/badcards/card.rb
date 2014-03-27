class Card
  SUITS = %w[Diamonds Clubs Hearts Spades]
  VALUES = %w[Ace 2 3 4 5 6 7 8 9 10 Jack Queen King]

  def initialize(value, suit)
    if !VALUES.include?(value)
      raise ArgumentError, "Invalid Card value"
    end
    if !SUITS.include?(suit)
      raise ArgumentError, "Invalid Card suit"
    end
    @value = value
    @suit = suit
  end

  def value
    @value
  end

  def suit
    @suit
  end

  def self.all_cards
    VALUES.each do |value|
      SUITS.each do |suit|
        yield value, suit
      end
    end
  end
end