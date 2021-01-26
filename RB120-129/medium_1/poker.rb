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

  def to_s
    @deck.each {|card| puts card}
  end
end

class PokerHand

  def initialize(deck)
    if deck.is_a? Deck
      @hand = []
      5.times { @hand << deck.draw }
    else
      @hand = deck
    end
  end

  def grouped_by_suit
    @hand.group_by{ |card| card.suit }
  end

  def grouped_by_rank
    @hand.group_by{ |card| card.rank }
  end

  def print
    puts @hand
  end

  def evaluate
    case
    when royal_flush?     then 'Royal flush'
    when straight_flush?  then 'Straight flush'
    when four_of_a_kind?  then 'Four of a kind'
    when full_house?      then 'Full house'
    when flush?           then 'Flush'
    when straight?        then 'Straight'
    when three_of_a_kind? then 'Three of a kind'
    when two_pair?        then 'Two pair'
    when pair?            then 'Pair'
    else                       'High card'
    end
  end

  private

  def royal_flush?
    return true if straight_flush? &&
                   @hand.map(&:value).min == 10
  end

  def straight_flush?
    true if flush? &&
            straight?
  end

  def four_of_a_kind?
    return true if grouped_by_rank.any? { |_, v| v.size == 4}
  end

  def full_house?
    return true if grouped_by_rank.size == 2
  end

  def flush?
    return true if grouped_by_suit.size == 1
  end

  def straight?
    return true if grouped_by_rank.size == 5 &&
                   @hand.map(&:value).max - @hand.map(&:value).min == 4
  end

  def three_of_a_kind?
    return true if grouped_by_rank.any? { |_, v| v.size == 3}
  end

  def two_pair?
    return true if grouped_by_rank.size == 3
  end

  def pair?
    return true if grouped_by_rank.any? { |_, v| v.size == 2}
  end

end

hand = PokerHand.new(Deck.new)
hand.print
puts hand.evaluate

class Array
  alias_method :draw, :pop
end

# Test that we can identify each PokerHand type.
hand = PokerHand.new([
  Card.new(10,      'Hearts'),
  Card.new('Ace',   'Hearts'),
  Card.new('Queen', 'Hearts'),
  Card.new('King',  'Hearts'),
  Card.new('Jack',  'Hearts')
])
puts hand.evaluate == 'Royal flush'

hand = PokerHand.new([
  Card.new(8,       'Clubs'),
  Card.new(9,       'Clubs'),
  Card.new('Queen', 'Clubs'),
  Card.new(10,      'Clubs'),
  Card.new('Jack',  'Clubs')
])
puts hand.evaluate == 'Straight flush'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(3, 'Diamonds')
])
puts hand.evaluate == 'Four of a kind'
#
hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(5, 'Hearts')
])
puts hand.evaluate == 'Full house'

hand = PokerHand.new([
  Card.new(10, 'Hearts'),
  Card.new('Ace', 'Hearts'),
  Card.new(2, 'Hearts'),
  Card.new('King', 'Hearts'),
  Card.new(3, 'Hearts')
])
puts hand.evaluate == 'Flush'

hand = PokerHand.new([
  Card.new(8,      'Clubs'),
  Card.new(9,      'Diamonds'),
  Card.new(10,     'Clubs'),
  Card.new(7,      'Hearts'),
  Card.new('Jack', 'Clubs')
])
puts hand.evaluate == 'Straight'

hand = PokerHand.new([
  Card.new('Queen', 'Clubs'),
  Card.new('King',  'Diamonds'),
  Card.new(10,      'Clubs'),
  Card.new('Ace',   'Hearts'),
  Card.new('Jack',  'Clubs')
])
puts hand.evaluate == 'Straight'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(6, 'Diamonds')
])
puts hand.evaluate == 'Three of a kind'

hand = PokerHand.new([
  Card.new(9, 'Hearts'),
  Card.new(9, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(8, 'Spades'),
  Card.new(5, 'Hearts')
])
puts hand.evaluate == 'Two pair'

hand = PokerHand.new([
  Card.new(2, 'Hearts'),
  Card.new(9, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(9, 'Spades'),
  Card.new(3, 'Diamonds')
])
puts hand.evaluate == 'Pair'

hand = PokerHand.new([
  Card.new(2,      'Hearts'),
  Card.new('King', 'Clubs'),
  Card.new(5,      'Diamonds'),
  Card.new(9,      'Spades'),
  Card.new(3,      'Diamonds')
])
puts hand.evaluate == 'High card'
