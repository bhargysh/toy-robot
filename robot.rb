class Robot
  attr_reader :x, :y, :f
  def initialize(x, y, f)
    @x = x
    @y = y
    @f = f
  end

  def ==(other)
    !other.nil? && x == other.x && y == other.y && f == other.f
  end
end
