require './robot'
require './table'

class Game

  def initialize(table, output)
    @table = table
    @robot = nil
    @output = output
  end

  def command(action)
    @robot = action.execute(@table, @robot, @output) unless action.nil?
    nil
  end
end
