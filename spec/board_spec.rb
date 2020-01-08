# frozen_string_literal: true

require './lib/board.rb'

describe Board do
  let(:board) { Board.new }

  describe '#initialize' do
    it 'if board starts out empty' do
      expect(Board.new.game_state).to eql([[' ', ' ', ' '], [' ', ' ', ' '], [' ', ' ', ' ']])
    end
  end

  describe '#mark_spot' do
    it 'if board coordinate gets marked with a correct symbol' do
      expect(board.mark_spot([0, 0], 'X')[0][0]).to eql('X')
    end

    it 'marked board coordinate not to equal other symbol' do
      expect(board.mark_spot([0, 1], 'O')[0][1]).not_to eql('X')
    end
  end
end
