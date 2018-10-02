require './action'

class Place < Action
  attr_reader :x, :y, :f
  def initialize(x, y, f)
    @x = x
    @y = y
    @f = f
  end

  def execute(table, robot)
    #check if table is valid
  end
end
