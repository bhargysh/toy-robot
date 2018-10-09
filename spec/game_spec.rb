require './game'
require './action'

RSpec.describe(Game) do
  subject do
    described_class.new(table)
  end
  let(:table) { Table.new(4) }

  context 'when a valid command is given' do
    let(:action) { double(Action) }
    let(:robot) { nil }
    before do
      expect(action).to receive(:execute).with(table, robot).and_return(robot)
    end
    it 'executes the action and returns nothing' do
      expect(subject.command(action)).to be_nil
    end
  end

  context 'when action is nil' do
    let(:action) { nil }
    it 'returns nothing' do
      expect(subject.command(action)).to be_nil
    end
  end

  context 'when new robot is returned' do
    let(:action) { double(Action) }
    let(:action_two) { double(Action) }
    let(:robot) { nil }
    let(:updated_robot) { Robot.new(3, 0, 'WEST') }

    before do
      expect(action).to receive(:execute).with(table, robot).and_return(updated_robot)
      expect(action_two).to receive(:execute).with(table, updated_robot).and_return(Robot.new(3, 0, 'SOUTH'))
    end

    it 'provides updated robot to next action' do
      subject.command(action)
      expect(subject.command(action_two)).to be_nil
    end
  end
end
