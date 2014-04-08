# BaDcards
[![Gem Version](https://badge.fury.io/rb/badcards.png)](http://badge.fury.io/rb/badcards)
[![Build Status](https://travis-ci.org/BensPotatoes/BaDCards.svg?branch=master)](https://travis-ci.org/BensPotatoes/BaDCards)
[![Coverage Status](https://coveralls.io/repos/BensPotatoes/BaDCards/badge.png?branch=master)](https://coveralls.io/r/BensPotatoes/BaDCards?branch=master)
[![Code Climate](https://codeclimate.com/github/benspotatoes/BaDCards.png)](https://codeclimate.com/github/benspotatoes/BaDCards)

Ruby library of playing cards.
I needed a card library for an app so I decided to make one.
Why "badcards"? Because the images are bad (check them out, you'll see what I mean).

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

## Properties

### Card
A card has a value, suit, and image.
Images are hosted by myself on S3 and (for the moment) are publicly available.

```
card = Card.new("Ace", "Spades")
card.img
# => "https://s3-us-west-2.amazonaws.com/badcards/cards/spade/ace.png"
```

Acceptable values (as strings):

* Ace (A)
* 2
* 3
* 4
* 5
* 6
* 7
* 8
* 9
* 10
* Jack (J)
* Queen (Q)
* King (K)

Acceptable suits (as strings):

* Diamond (D)
* Club (C)
* Heart (H)
* Spade (S)

### Hand
A simple container to hold cards, currently no limit on the number of cards in each

### Deck
A deck is comprised of a minimum of 52 cards, currently no limit on the number of base decks in each (defaults to 1).
Has a shuffle method to shuffle cards randomly, shuffles 12 times by default.
Also has a peek method to see what the n top-most cards are.

```
deck = Deck.new(6)
deck.shuffle(3)
deck.peek(5)
# => [Card, Card, Card, Card, Card]
```

## Contributing

1. Fork it ( http://github.com/benspotatoes/badcards/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
