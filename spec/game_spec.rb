require './game'
require './action'

RSpec.describe(Game) do
  subject do
    described_class.new(table).command(action)
  end
  let(:table) { Table.new(4) }

  context 'when a valid command is given' do
    let(:action) { double(Action) }
    let(:robot) { nil }
    before do
      expect(action).to receive(:execute).with(table, robot)
    end
    it 'executes the action and returns nothing' do
      expect(subject).to be_nil
    end
  end

  context 'when action is nil' do
    let(:action) { nil }
    it 'returns nothing' do
      expect(subject).to be_nil
    end
  end
end
