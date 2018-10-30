require './action'
require './table'
class Move < Action
  def execute(table, robot)
    return nil if robot.nil?

    updated_robot = move(robot)
    if table.valid_position?(updated_robot.x, updated_robot.y)
      updated_robot
    else
      robot
    end

  end

  def move(robot)
    case robot.f
    when "NORTH"
      Robot.new(robot.x, robot.y + 1, robot.f)
    when "SOUTH"
      Robot.new(robot.x, robot.y - 1, robot.f)
    when "EAST"
      Robot.new(robot.x + 1, robot.y, robot.f)
    when "WEST"
      Robot.new(robot.x - 1, robot.y, robot.f)
    end
  end

end
