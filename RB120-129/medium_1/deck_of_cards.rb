class Card
  include Comparable

  attr_reader :rank, :suit, :value

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
    @value = set_value
  end

  def set_value
    if @rank.is_a? Integer
      @rank
    else
      case @rank
      when 'Jack' then 11
      when 'Queen' then 12
      when 'King' then 13
      when 'Ace' then 14
      end
    end
  end

  def <=>(other_card)
    value <=> other_card.value
  end

  def to_s
     "#{rank} of #{suit}"
   end
end

class Deck
RANKS = ((2..10).to_a + %w(Jack Queen King Ace)).freeze
SUITS = %w(Hearts Clubs Diamonds Spades).freeze

  def initialize
    create_and_shuffle
  end

  def create_and_shuffle
    @deck = RANKS.product(SUITS).map do |rank, suit|
              Card.new(rank, suit)
             end
    @deck.shuffle!
  end

  def draw
    create_and_shuffle if @deck.empty?
    @deck.pop
  end

end

deck = Deck.new
drawn = []
52.times { drawn << deck.draw }
puts drawn.count { |card| card.rank == 5 } == 4
puts drawn.count { |card| card.suit == 'Hearts' } == 13

drawn2 = []
52.times { drawn2 << deck.draw }
puts drawn != drawn2 # Almost always.
