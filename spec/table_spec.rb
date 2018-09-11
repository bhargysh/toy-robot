require './table'

RSpec.describe(Table) do
  subject(:table) do
    described_class.new(length)
  end
  let(:length) { 5 }

  context 'when position is valid' do
    it 'returns true' do
      expect(table.valid_position?(0,0)).to eq(true)
    end
  end
  context 'when position is invalid' do
    it 'returns false for 5,5' do
      expect(table.valid_position?(5,5)).to eq(false)
    end
    it 'returns false for 0,-2' do
      expect(table.valid_position?(0,-2)).to eq(false)
    end
  end

end
