require './robot'
require './table'
class Game

  def initialize(table)
    @table = table
    @robot = nil
  end

  def command(action)
    action.execute(@table, @robot) unless action.nil?
  end
end
