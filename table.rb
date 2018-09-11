class Table
  attr_reader :range
  def initialize(length)
    @range = 0...length
  end

  def valid_position?(x, y)
    range.include?(x) && range.include?(y)
  end
end
