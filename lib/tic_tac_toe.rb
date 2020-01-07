#frozen_string_literal: true

class TicTacToe
    def initialize(player1, player2)
        @player1 = player1
        @player2 = player2
        @board = Board.new
    
        @win_state_coordinates = [
          [[0, 0], [0, 1], [0, 2]], [[1, 0], [1, 1], [1, 2]],
          [[2, 0], [2, 1], [2, 2]], [[0, 0], [1, 0], [2, 0]],
          [[0, 1], [1, 1], [2, 1]], [[0, 2], [1, 2], [2, 2]],
          [[0, 0], [1, 1], [2, 2]], [[0, 2], [1, 1], [2, 0]]
        ]
    end

    def mark_spot(player, coordinate_string)
        coordinate = Array.new(2)
    
        coordinate[0] = coordinate_string[0].downcase.ord
        coordinate[0] -= 97
        coordinate[1] = coordinate_string[1].to_i - 1
    
        value = @board.game_state[coordinate[0]].nil? ? nil : @board.game_state[coordinate[0]][coordinate[1]]
    
        case value
        when ' '
          @board.game_state[coordinate[0]][coordinate[1]] =
            player.equal?(@player1) ? 'X' : 'O'
        when nil
          raise ArgumentError, 'There is no such coordinate on the game table!'
        else
          error_string_end = if value == 'X'
                               player.equal?(@player1) ? 'You' : @player1.name
                             else
                               player.equal?(@player2) ? 'You' : @player2.name
                             end
    
          raise ArgumentError, 'This coordinate is already marked by ' +
                               error_string_end + '!'
        end
    end

    def game_state
      @board.game_state
    end
    
    def check_for_winner
      @win_state_coordinates.any? { |coordinates| comparator(coordinates) }
    end

    private
    
    def comparator(spots)
      return false if @board.game_state[spots.first[0]][spots.first[1]] == ' '

      spots.all? do |spot|
          @board.game_state[spot[0]][spot[1]] ==
          @board.game_state[spots.first[0]][spots.first[1]]
      end
    end        
end
