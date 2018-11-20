require './action'
class Report < Action
  def execute(table, robot, output)
    return nil if robot.nil?

    output.write("#{robot.x},#{robot.y},#{robot.f}")
    robot
    ## refactor so puts is not in the report class
  end
end
