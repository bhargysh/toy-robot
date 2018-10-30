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

  def move
    case self.f
    when "NORTH"
      Robot.new(self.x, self.y + 1, self.f)
    when "SOUTH"
      Robot.new(self.x, self.y - 1, self.f)
    when "EAST"
      Robot.new(self.x + 1, self.y, self.f)
    when "WEST"
      Robot.new(self.x - 1, self.y, self.f)
    end
  end
end
