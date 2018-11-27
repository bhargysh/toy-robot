class Game

  def initialize(table, output, parser)
    @table = table
    @robot = nil
    @output = output
    @parser = parser
  end

  def command(action)
    @robot = action.execute(@table, @robot, @output) unless action.nil?
    nil
  end

  def play
    while input = $stdin.gets
      action = @parser.retrieve_input(input.chomp)
      command(action)
    end
  end
end
