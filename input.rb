require './move'
require './left'
require './right'
require './report'

class UserInput
  def self.retrieve_input(command)
    simple_commands =
    {
      "MOVE" => Move.new,
      "LEFT" => Left.new,
      "RIGHT" => Right.new,
      "REPORT" => Report.new
    }
    simple_commands[command]
  end
end
