require './table'

RSpec.describe(Table) do
  subject do
    described_class.new(length).valid_position?(x, y)
  end
  let(:length) { 5 }

  context 'when position is valid' do
    let(:x) { 0 }
    let(:y) { 0 }
    it 'returns true' do
      expect(subject).to eq(true)
    end
  end
  context 'when position is invalid' do
    let(:x) { 5 }
    let(:y) { 5 }
    it 'returns false for 5,5' do
      expect(subject).to eq(false)
    end
  end

  context 'when position is invalid' do
    let(:x) { 0 }
    let(:y) { -2 }
    it 'returns false for 0,-2' do
      expect(subject).to eq(false)
    end
  end

end
