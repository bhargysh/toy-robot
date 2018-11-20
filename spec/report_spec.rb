require './report'
require './table'
require './robot'
RSpec.describe(Report) do
  subject do
    described_class.new
  end

  let(:table) { Table.new(5) }
  let(:output) { double }
  context 'when robot does not exist' do
    let(:robot) { nil }

    before do
      expect(output).not_to receive(:write)
    end
    it 'returns nil and does not report' do
      expect(subject.execute(table, robot, output)).to eq(nil)
    end
  end

  context 'when robot exists' do
    let(:robot) { Robot.new(3, 2, 'WEST') }
    let(:output) { double }
    let(:report) { '3,2,WEST' }

    before do
      allow(output).to receive(:write).with(report)
    end
    it 'outputs the x, y, f values' do
      expect(subject.execute(table, robot, output)).to eq(robot)
    end
  end
end
