module TicTacToe

  class Game
    attr_reader :players, :board, :current_player, :other_player

    def initialize(players_array, board = Board.new)
      @players = players_array
      @board = board
      @current_player, @other_player = @players.shuffle
    end
  end
end
