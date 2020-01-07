# frozen_string_literal: true

require './lib/tic_tac_toe.rb'
require './lib/player.rb'
require './lib/board.rb'

describe TicTacToe do
  let(:player1) { Player.new('John Doe') }
  let(:player2) { Player.new('Jane Doe') }
  let(:game) { TicTacToe.new(player1, player2) }

  describe '#mark_spot' do
    it 'if correct mark on the board gets marked' do
      expect(game.mark_spot(player1, 'a1')[0][0]).to eql('X')
    end

    it 'if trying to mark a spot already marked raises an exception' do
      game.mark_spot(player1, 'b1')
      expect { game.mark_spot(player2, 'b1')[1][0] }.to raise_exception
    end

    it 'if giving the wrong coordinate raises an exception' do
      expect { game.mark_spot(player1, 'z9') }.to raise_exception
    end
  end
end
