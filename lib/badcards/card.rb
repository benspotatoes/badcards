class Card
  SUITS = %w[Diamonds Clubs Hearts Spades]
  SHORT_SUITS = {
    'D' => 'Diamonds',
    'C' => 'Clubs',
    'H' => 'Hearts',
    'S' => 'Spades'
  }

  VALUES = %w[Ace 2 3 4 5 6 7 8 9 10 Jack Queen King]
  SHORT_VALUES = {
    'A' => 'Ace',
    'J' => 'Jack',
    'Q' => 'Queen',
    'K' => 'Jack'
  }

  S3_URLS = {
    "ace+diamonds" => "https://s3-us-west-2.amazonaws.com/badcards/cards/diamond/ace.png",
    "two+diamonds" => "https://s3-us-west-2.amazonaws.com/badcards/cards/diamond/two.png",
    "three+diamonds" => "https://s3-us-west-2.amazonaws.com/badcards/cards/diamond/three.png",
    "four+diamonds" => "https://s3-us-west-2.amazonaws.com/badcards/cards/diamond/four.png",
    "five+diamonds" => "https://s3-us-west-2.amazonaws.com/badcards/cards/diamond/five.png",
    "six+diamonds" => "https://s3-us-west-2.amazonaws.com/badcards/cards/diamond/six.png",
    "seven+diamonds" => "https://s3-us-west-2.amazonaws.com/badcards/cards/diamond/seven.png",
    "eight+diamonds" => "https://s3-us-west-2.amazonaws.com/badcards/cards/diamond/eight.png",
    "nine+diamonds" => "https://s3-us-west-2.amazonaws.com/badcards/cards/diamond/nine.png",
    "ten+diamonds" => "https://s3-us-west-2.amazonaws.com/badcards/cards/diamond/ten.png",
    "jack+diamonds" => "https://s3-us-west-2.amazonaws.com/badcards/cards/diamond/jack.png",
    "queen+diamonds" => "https://s3-us-west-2.amazonaws.com/badcards/cards/diamond/queen.png",
    "king+diamonds" => "https://s3-us-west-2.amazonaws.com/badcards/cards/diamond/king.png",

    "ace+clubs" => "https://s3-us-west-2.amazonaws.com/badcards/cards/club/ace.png",
    "two+clubs" => "https://s3-us-west-2.amazonaws.com/badcards/cards/club/two.png",
    "three+clubs" => "https://s3-us-west-2.amazonaws.com/badcards/cards/club/three.png",
    "four+clubs" => "https://s3-us-west-2.amazonaws.com/badcards/cards/club/four.png",
    "five+clubs" => "https://s3-us-west-2.amazonaws.com/badcards/cards/club/five.png",
    "six+clubs" => "https://s3-us-west-2.amazonaws.com/badcards/cards/club/six.png",
    "seven+clubs" => "https://s3-us-west-2.amazonaws.com/badcards/cards/club/seven.png",
    "eight+clubs" => "https://s3-us-west-2.amazonaws.com/badcards/cards/club/eight.png",
    "nine+clubs" => "https://s3-us-west-2.amazonaws.com/badcards/cards/club/nine.png",
    "ten+clubs" => "https://s3-us-west-2.amazonaws.com/badcards/cards/club/ten.png",
    "jack+clubs" => "https://s3-us-west-2.amazonaws.com/badcards/cards/club/jack.png",
    "queen+clubs" => "https://s3-us-west-2.amazonaws.com/badcards/cards/club/queen.png",
    "king+clubs" => "https://s3-us-west-2.amazonaws.com/badcards/cards/club/king.png",

    "ace+hearts" => "https://s3-us-west-2.amazonaws.com/badcards/cards/heart/ace.png",
    "two+hearts" => "https://s3-us-west-2.amazonaws.com/badcards/cards/heart/two.png",
    "three+hearts" => "https://s3-us-west-2.amazonaws.com/badcards/cards/heart/three.png",
    "four+hearts" => "https://s3-us-west-2.amazonaws.com/badcards/cards/heart/four.png",
    "five+hearts" => "https://s3-us-west-2.amazonaws.com/badcards/cards/heart/five.png",
    "six+hearts" => "https://s3-us-west-2.amazonaws.com/badcards/cards/heart/six.png",
    "seven+hearts" => "https://s3-us-west-2.amazonaws.com/badcards/cards/heart/seven.png",
    "eight+hearts" => "https://s3-us-west-2.amazonaws.com/badcards/cards/heart/eight.png",
    "nine+hearts" => "https://s3-us-west-2.amazonaws.com/badcards/cards/heart/nine.png",
    "ten+hearts" => "https://s3-us-west-2.amazonaws.com/badcards/cards/heart/ten.png",
    "jack+hearts" => "https://s3-us-west-2.amazonaws.com/badcards/cards/heart/jack.png",
    "queen+hearts" => "https://s3-us-west-2.amazonaws.com/badcards/cards/heart/queen.png",
    "king+hearts" => "https://s3-us-west-2.amazonaws.com/badcards/cards/heart/king.png",

    "ace+spades" => "https://s3-us-west-2.amazonaws.com/badcards/cards/spade/ace.png",
    "two+spades" => "https://s3-us-west-2.amazonaws.com/badcards/cards/spade/two.png",
    "three+spades" => "https://s3-us-west-2.amazonaws.com/badcards/cards/spade/three.png",
    "four+spades" => "https://s3-us-west-2.amazonaws.com/badcards/cards/spade/four.png",
    "five+spades" => "https://s3-us-west-2.amazonaws.com/badcards/cards/spade/five.png",
    "six+spades" => "https://s3-us-west-2.amazonaws.com/badcards/cards/spade/six.png",
    "seven+spades" => "https://s3-us-west-2.amazonaws.com/badcards/cards/spade/seven.png",
    "eight+spades" => "https://s3-us-west-2.amazonaws.com/badcards/cards/spade/eight.png",
    "nine+spades" => "https://s3-us-west-2.amazonaws.com/badcards/cards/spade/nine.png",
    "ten+spades" => "https://s3-us-west-2.amazonaws.com/badcards/cards/spade/ten.png",
    "jack+spades" => "https://s3-us-west-2.amazonaws.com/badcards/cards/spade/jack.png",
    "queen+spades" => "https://s3-us-west-2.amazonaws.com/badcards/cards/spade/queen.png",
    "king+spades" => "https://s3-us-west-2.amazonaws.com/badcards/cards/spade/king.png"
  }

  def initialize(value, suit)
    if !VALUES.include?(value) && !VALUES.include?(SHORT_VALUES[value])
      raise ArgumentError, "Invalid Card value"
    end
    if !SUITS.include?(suit) && !SUITS.include?(SHORT_SUITS[suit])
      raise ArgumentError, "Invalid Card suit"
    end
    @value = SHORT_VALUES[value] || value
    @suit = SHORT_SUITS[suit] || suit
    @image = S3_URLS["#{value.downcase}+#{suit.downcase}"]
  end

  def value
    @value
  end

  def suit
    @suit
  end

  def img
    @image
  end

  def to_s
    "#{value} of #{suit}"
  end

  def self.all_cards
    VALUES.each do |value|
      SUITS.each do |suit|
        yield value, suit
      end
    end
  end
end