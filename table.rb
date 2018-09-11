class Table
  attr_reader :length
  def initialize(length)
    @length = length
  end

  def valid_position?(x, y)
    x < length && y < length && x >= 0 && y >= 0
  end
end
