# frozen_string_literal: true

class Board
  attr_reader :game_state

  def initialize
    @game_state = [[' ', ' ', ' '], [' ', ' ', ' '], [' ', ' ', ' ']]
  end

  def mark_spot(coordinate, symbol)
    @game_state[coordinate[0]][coordinate[1]] = symbol
  end
end
