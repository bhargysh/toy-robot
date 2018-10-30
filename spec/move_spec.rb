RSpec.describe(Move) do
  subject do
    described_class.new
  end

  let(:table) { Table.new(5) }

  context 'when robot does not exist' do
    let(:robot) { nil }
    it 'returns nil' do
      expect(subject.execute(table, robot)).to eq(nil)
    end
  end

  context 'when robot is able to move' do
    let(:robot) { Robot.new(1, 2, "NORTH") }
    let(:updated_robot) { Robot.new(1, 3, "NORTH") }
    it 'returns newly updated robot' do
      expect(subject.execute(table, robot)).to eq(updated_robot)
    end
  end

  context 'when robot is unable to move' do
    let(:robot) { Robot.new(4, 1, "EAST") }
    let(:updated_robot) { Robot.new(4, 1, "EAST") }
    it 'returns previous state of old robot' do
      expect(subject.execute(table, robot)).to eq(updated_robot)
    end
  end

end
