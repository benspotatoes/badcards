module Helper
  def make_card(value, suit)
    @card = Card.new(value, suit)
  end

  def make_deck(num_decks = 1)
    @deck = Deck.new(num_decks)
  end

  def make_hand
    @hand = Hand.new
  end
end