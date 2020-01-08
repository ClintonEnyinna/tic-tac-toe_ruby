# frozen_string_literal: true

require './lib/tic_tac_toe.rb'
require './lib/player.rb'
require './lib/board.rb'

describe TicTacToe do
  let(:player1) { Player.new('John Doe') }
  let(:player2) { Player.new('Jane Doe') }
  let(:game) { TicTacToe.new(player1, player2) }

  describe '#initialize' do
    it 'should not return any error' do
      expect { TicTacToe.new(player1, player2) }.not_to raise_exception
    end
  end

  describe '#mark_spot' do
    it 'if correct mark on the board gets marked' do
      expect(game.mark_spot(player1, 'a1')[0][0]).to eql('X')
    end

    it 'if marking a already marked spot raises an exception' do
      game.mark_spot(player1, 'b1')
      expect { game.mark_spot(player2, 'b1')[1][0] }.to raise_exception
    end

    it 'if wrong coordinate raises an exception' do
      expect { game.mark_spot(player1, 'z9') }.to raise_exception
    end
  end

  describe '#game_state' do
    it 'returns an array of 3' do
      expect(game.game_state.length).to eql(3)
    end

    it 'returns an array of 3 x 3 part 1' do
      expect(game.game_state[0].length).to eql(3)
    end

    it 'returns an array of 3 x 3 part 2' do
      expect(game.game_state[1].length).to eql(3)
    end

    it 'returns an array of 3 x 3 part 3' do
      expect(game.game_state[2].length).to eql(3)
    end
  end

  describe '#check_for_winner' do
    it 'returns false when game board is empty' do
      game_winner = TicTacToe.new(player1, player2)
      expect(game_winner.check_for_winner).to eql(false)
    end

    it "returns false when any row isn't marked with same player symbols" do
      game_winner = TicTacToe.new(player1, player2)
      game_winner.mark_spot(player1, 'a1')
      game_winner.mark_spot(player1, 'a3')
      game_winner.mark_spot(player1, 'b1')
      game_winner.mark_spot(player1, 'b3')
      game_winner.mark_spot(player1, 'c2')
      game_winner.mark_spot(player2, 'a2')
      game_winner.mark_spot(player2, 'b2')
      game_winner.mark_spot(player2, 'c1')
      game_winner.mark_spot(player2, 'c3')
      expect(game.check_for_winner).to eql(false)
    end

    it 'true when first horizontal row is marked with same symbols' do
      game_winner = TicTacToe.new(player1, player2)
      game_winner.mark_spot(player1, 'a1')
      game_winner.mark_spot(player1, 'a2')
      game_winner.mark_spot(player1, 'a3')
      expect(game_winner.check_for_winner).to eql(true)
    end

    it 'true when second horizontal row is marked with same symbols' do
      game_winner = TicTacToe.new(player1, player2)
      game_winner.mark_spot(player1, 'b1')
      game_winner.mark_spot(player1, 'b2')
      game_winner.mark_spot(player1, 'b3')
      expect(game_winner.check_for_winner).to eql(true)
    end

    it 'true when third horizontal row is marked with same symbols' do
      game_winner = TicTacToe.new(player1, player2)
      game_winner.mark_spot(player1, 'c1')
      game_winner.mark_spot(player1, 'c2')
      game_winner.mark_spot(player1, 'c3')
      expect(game_winner.check_for_winner).to eql(true)
    end

    it 'true when first vertical row is marked with same symbols' do
      game_winner = TicTacToe.new(player1, player2)
      game_winner.mark_spot(player1, 'a1')
      game_winner.mark_spot(player1, 'b1')
      game_winner.mark_spot(player1, 'c1')
      expect(game_winner.check_for_winner).to eql(true)
    end

    it 'true when second vertical row is marked with same symbols' do
      game_winner = TicTacToe.new(player1, player2)
      game_winner.mark_spot(player1, 'a2')
      game_winner.mark_spot(player1, 'b2')
      game_winner.mark_spot(player1, 'c2')
      expect(game_winner.check_for_winner).to eql(true)
    end

    it 'true when third vertical row is marked with same symbols' do
      game_winner = TicTacToe.new(player1, player2)
      game_winner.mark_spot(player1, 'a3')
      game_winner.mark_spot(player1, 'b3')
      game_winner.mark_spot(player1, 'c3')
      expect(game_winner.check_for_winner).to eql(true)
    end

    it 'true when first diagonal row is marked with same symbols' do
      game_winner = TicTacToe.new(player1, player2)
      game_winner.mark_spot(player1, 'a1')
      game_winner.mark_spot(player1, 'b2')
      game_winner.mark_spot(player1, 'c3')
      expect(game_winner.check_for_winner).to eql(true)
    end

    it 'true when second diagonal row is marked with same symbols' do
      game_winner = TicTacToe.new(player1, player2)
      game_winner.mark_spot(player1, 'a3')
      game_winner.mark_spot(player1, 'b2')
      game_winner.mark_spot(player1, 'c1')
      expect(game_winner.check_for_winner).to eql(true)
    end
  end
end
