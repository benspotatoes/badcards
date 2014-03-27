class Hand
  def initialize
    @cards = []
  end

  def cards
    @cards
  end

  def cards=(new_cards)
    @cards = new_cards
  end

  def add_card(card)
    @cards << card
  end

  def add_cards(cards)
    @cards += cards
  end
end