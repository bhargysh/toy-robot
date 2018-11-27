require 'stringio'
require './output'
RSpec.describe(Output) do
  let(:io) { StringIO.new }
  subject do
    described_class.new(io)
  end

  context 'when called' do
    before do
      subject.write('blah')
    end
    it 'writes to an IO object' do
      expect(io.string).to eq("blah\n")
    end
  end
end
