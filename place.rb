require './action'

class Place < Action
  attr_reader :x, :y, :f
  def initialize(x, y, f)
    @x = x
    @y = y
    @f = f
  end
end
