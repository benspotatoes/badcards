# BaDcards

Ruby library of playing cards.

## Installation

Add this line to your application's Gemfile:

    gem 'badcards'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install badcards

## Usage

```
card = Card.new("Ace", "Spades") # create an "Ace of Spades" card
hand = Hand.new # create a hand that can hold onto cards
deck = Deck.new(6) # create a deck consisting of six mini-decks of 52 cards
```

## Contributing

1. Fork it ( http://github.com/benspotatoes/badcards/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
