require_relative '../input'


RSpec.describe(Input) do
  subject do
    described_class.new(StringIO.new(input))
  end

  context 'when input is not given' do
    let(:input) { '' }
    it 'returns nil' do
      expect(subject.read_line).to be(nil)
    end
  end

  context 'when input contains text' do
    let(:input) { 'blahblah' }
    it 'returns the text' do
      expect(subject.read_line).to eq('blahblah')
    end
  end

  context 'when input contains multiple lines' do
    let(:input) { "hi\nblah\nbye\n"}
    it 'returns each line without trailing new line' do
      expect((1..4).map { subject.read_line }).to eq(['hi', 'blah', 'bye', nil])
    end
  end

end
