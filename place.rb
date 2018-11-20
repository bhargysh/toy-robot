require './action'

class Place < Action
  attr_reader :x, :y, :f
  def initialize(x, y, f)
    @x = x
    @y = y
    @f = f
  end

  def execute(table, robot, output)
    return robot unless table.valid_position?(x, y)

    Robot.new(x, y, f)
  end
end
