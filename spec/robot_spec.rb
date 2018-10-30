RSpec.describe(Robot) do
  subject do
    described_class.new(x, y, facing)
  end

  context 'when robot is able to move' do
    let(:table) { Table.new(5) }
    let(:x) { 1 }
    let(:y) { 2 }
    context 'North' do
      let(:facing) { "NORTH" }
      let(:updated_robot) { Robot.new(1, 3, "NORTH") }
      it 'returns newly updated robot' do
        expect(subject.move).to eq(updated_robot)
      end
    end
    context 'South' do
      let(:facing) { "SOUTH" }
      let(:updated_robot) { Robot.new(1, 1, "SOUTH") }
      it 'returns newly updated robot' do
        expect(subject.move).to eq(updated_robot)
      end
    end
    context 'East' do
      let(:facing) { "EAST" }
      let(:updated_robot) { Robot.new(2, 2, "EAST") }
      it 'returns newly updated robot' do
        expect(subject.move).to eq(updated_robot)
      end
    end
    context 'West' do
      let(:facing) { "WEST" }
      let(:updated_robot) { Robot.new(0, 2, "WEST") }
      it 'returns newly updated robot' do
        expect(subject.move).to eq(updated_robot)
      end
    end
  end


end
