require './report'
require './table'
require './robot'
RSpec.describe(Report) do
  subject do
    described_class.new
  end

  let(:table) { Table.new(5) }
  context 'when robot does not exist' do
    let(:robot) { nil }
    it 'returns nil and does not report' do
      expect(subject.execute(table, robot)).to eq(nil)
    end
  end

  context 'when robot exists' do
    let(:robot) { Robot.new(3, 2, 'WEST') }
    let(:output) { '3,2,WEST' }

    before do
      allow(Kernel).to receive(:puts).with(output)
    end
    it 'outputs the x, y, f values' do
      expect(subject.execute(table, robot)).to eq(robot)
    end
  end
end
