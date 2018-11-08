require './right'
require './table'
require './robot'

RSpec.describe(Right) do
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

  context 'when robot' do
    let(:robot) { Robot.new(2, 3, f) }
    context 'is facing NORTH' do
      let(:f) { 'NORTH' }
      it do
        expect(subject.execute(table, robot)).to eq(Robot.new(2, 3, 'EAST'))
      end
    end

    context 'is facing EAST' do
      let(:f) { 'EAST' }
      it do
        expect(subject.execute(table, robot)).to eq(Robot.new(2, 3, 'SOUTH'))
      end
    end

    context 'is facing SOUTH' do
      let(:f) { 'SOUTH' }
      it do
        expect(subject.execute(table, robot)).to eq(Robot.new(2, 3, 'WEST'))
      end
    end

    context 'is facing WEST' do
      let(:f) { 'WEST' }
      it do
        expect(subject.execute(table, robot)).to eq(Robot.new(2, 3, 'NORTH'))
      end
    end
  end
end
