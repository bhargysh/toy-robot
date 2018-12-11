class Game

  def initialize(table, input, output, parser)
    @table = table
    @robot = nil
    @input = input
    @output = output
    @parser = parser
  end

  def command(action)
    @robot = action.execute(@table, @robot, @output) unless action.nil?
    nil
  end

  def play
    while text = @input.read_line
      action = @parser.retrieve_input(text)
      command(action)
    end
  end
end
