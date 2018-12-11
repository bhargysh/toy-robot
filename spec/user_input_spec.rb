require './user_input'
require './action'
require './place'
require './move'
require './left'
require './right'
require './report'

RSpec.describe(UserInput) do
  subject do
    described_class.retrieve_input(command)
  end

  context 'when a valid command is passed in' do
    context 'when command is place' do
      let(:command) { "PLACE #{x},#{y},#{f}" }
      let(:x) { 2 }
      let(:y) { 3 }
      let(:f) { "NORTH" }
      it 'should return a place object' do
        expect(subject).to be_a Place
      end
      it 'should return correct x position' do
        expect(subject.x).to eq(x)
      end
      it 'should return correct y position' do
        expect(subject.y).to eq(y)
      end
      it 'should return correct direction' do
        expect(subject.f).to eq(f)
      end
    end

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
