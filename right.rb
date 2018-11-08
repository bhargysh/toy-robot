require './action'
class Right < Action

  def execute(table, robot)
    return nil if robot.nil?

    Robot.new(robot.x, robot.y, change_f(robot))

  end

  def change_f(robot)
    case robot.f
    when 'NORTH'
      'EAST'
    when 'EAST'
      'SOUTH'
    when 'SOUTH'
      'WEST'
    when 'WEST'
      'NORTH'
    else
      robot.f
    end
  end
end
