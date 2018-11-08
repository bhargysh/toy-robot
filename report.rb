require './action'
class Report < Action
  def execute(table, robot)
    return nil if robot.nil?

    puts "#{robot.x},#{robot.y},#{robot.f}"
    robot
  end
end
