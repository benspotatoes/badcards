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

  def peek
    @cards.first
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