require './action'

class Left < Action

  def execute(table, robot, output)
    return nil if robot.nil?

    Robot.new(robot.x, robot.y, change_f(robot))

  end

  def change_f(robot)
    case robot.f
    when 'NORTH'
      'WEST'
    when 'EAST'
      'NORTH'
    when 'SOUTH'
      'EAST'
    when 'WEST'
      'SOUTH'
    else
      robot.f
    end
  end
end
