require './input'
require './action'
require './move'
require './left'
require './right'
require './report'

RSpec.describe(UserInput) do
  subject do
    described_class.retrieve_input(command)
  end

  context 'when a valid command is passed in' do
    context 'when command is move' do
      let(:command) { "MOVE" }
      it 'should return a move object' do
        expect(subject).to be_a Move
      end
    end

    context 'when command is move' do
      let(:command) { "LEFT" }
      it 'should return a left object' do
        expect(subject).to be_a Left
      end
    end

    context 'when command is move' do
      let(:command) { "RIGHT" }
      it 'should return a move object' do
        expect(subject).to be_a Right
      end
    end

    context 'when command is move' do
      let(:command) { "REPORT" }
      it 'should return a move object' do
        expect(subject).to be_a Report
      end
    end
  end

  context 'when invalid command is passed in' do
    let(:command) { "BACK" }
    it 'should not return anything' do
      expect(subject).to eq(nil)
    end
  end

end
