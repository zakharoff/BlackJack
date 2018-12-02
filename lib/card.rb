class Card

  attr_reader :val, :suit

  def initialize(val, suit)
    @val = val
    @suit = suit
  end

  def score_card
    return 10 if %w(J Q K).include?(@val)
    return 11 if 'A'.include?(@val)
    return @val if @val.class == Integer
  end
end
