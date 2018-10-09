require './robot'
require './table'
class Game

  def initialize(table)
    @table = table
    @robot = nil
  end

  def command(action)
    @robot = action.execute(@table, @robot) unless action.nil?
    nil
  end
end
