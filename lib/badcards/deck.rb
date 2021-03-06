class Deck
  def initialize(num_decks = 1)
    @cards = []
    num_decks.times do
      Card.all_cards do |value, suit|
        @cards << Card.new(value, suit)
      end
    end
  end

  def cards
    @cards
  end

  def size
    @cards.count
  end

  def peek(num_to_peek = 1)
    if num_to_peek == 1
      @cards.first
    else
      @cards[0..num_to_peek-1]
    end
  end

  # Defaults to seven 'rounds' of shuffling, determined to be the optimal value
  # per Diaconis (http://en.wikipedia.org/wiki/Persi_Diaconis#Card_shuffling)
  def shuffle(num_times = 7)
    num_times.times do
      @cards.each_with_index do |card, index|
        switch = rand(size)
        @cards[index] = @cards[switch]
        @cards[switch] = card
      end
    end
    return
  end

  def draw(num_to_draw = 1, hand_for_draw = nil)
    @drawn = []
    num_to_draw.times do
      if card = @cards.shift
        @drawn << card
      else
        break
      end
    end
    if hand_for_draw && hand_for_draw.is_a?(Hand)
      hand_for_draw.cards += @drawn
    else
      if @drawn.count <= 1
        return @drawn.first
      else
        return @drawn
      end
    end
  end
end