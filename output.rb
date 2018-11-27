class Output
  def initialize(io)
    @io = io
  end

  def write(text)
    @io.puts text
  end
end
