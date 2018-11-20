require './action'
require './table'
class Move < Action
  def execute(table, robot, output)
    return nil if robot.nil?

    updated_robot = robot.move
    if table.valid_position?(updated_robot.x, updated_robot.y)
      updated_robot
    else
      robot
    end
  end

end
