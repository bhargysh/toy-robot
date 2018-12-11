class Input
  def read_line
    @input.gets&.chomp
  end
  def initialize(input)
    @input = input
  end
end
