require './place'
require './robot'
require './table'
RSpec.describe(Place) do
  subject do
    described_class.new(x, y, f)
  end
  let(:x) { 3 }
  let(:y) { 1 }
  let(:f) { 'EAST' }
  let(:table) { Table.new(5) }
  let(:robot) { nil }
  let(:output) { double }
  before do
    expect(output).not_to receive(:write)
  end

  context 'when place action is given' do
    it 'moves the robot' do
      expect(subject.execute(table, robot, output)).to eq(Robot.new(x, y, f))
    end
  end

  context 'when robot position is invalid' do
    let(:old_robot) { Robot.new(0, 1, 'SOUTH') }
    let(:x) { -1 }
    let(:y) { -1 }
    it 'returns latest valid robot' do
      expect(subject.execute(table, old_robot, output)).to eq(old_robot)
    end
  end
end
