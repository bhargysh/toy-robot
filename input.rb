require './place'
require './move'
require './left'
require './right'
require './report'

class UserInput
  def self.retrieve_input(command)
    parse_simple_command(command) || parse_place_command(command)
  end

  private
  def self.parse_simple_command(command)

    simple_commands =
    {
      "MOVE" => Move.new,
      "LEFT" => Left.new,
      "RIGHT" => Right.new,
      "REPORT" => Report.new
    }
    simple_commands[command]
  end

  def self.parse_place_command(command)
    /^PLACE (\d+),(\d+),(NORTH|SOUTH|EAST|WEST)$/.match(command) do |m|
      Place.new(m[1].to_i, m[2].to_i, m[3])
    end
  end
end
