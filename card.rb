class Card

  attr_reader :suit, :value

  def initialize(suit, value)

    if [:hearts, :diamonds, :clubs, :spades].include?(suit)
      @suit = suit
    else
      raise ArgumentError.new "The suit must be one of the right ones."
    end
    @value = value
  end

  def value
    @value
  end

  def suit
    @suit
  end

end
