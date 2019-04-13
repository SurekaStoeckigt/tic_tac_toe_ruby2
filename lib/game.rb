module TicTacToe

  class Game
    attr_reader :players, :board, :current_player, :other_player

    def initialize(players_array, board = Board.new)
      @players = players_array
      @board = board
      @current_player, @other_player = @players.shuffle
    end

    def switch_players
      @current_player, @other_player = @other_player, @current_player
    end

    def solicit_move
      "#{current_player.name}: Enter a symbol and a number between 1 and 9"
    end

    def get_move(current_player_move = gets.chomp)
      move_to_coordinate(current_player_move)
    end

    def game_over_message
      return "#{current_player.name} won!" if board.game_over == :winner
      return "The game ended in a draw!" if board.game_over == :draw
    end

    def play
      puts "#{current_player.name} has been selected as the current player"
      while true do
        puts solicit_move
        x, y = get_move
        board.set_cell(x,y,current_player.symbol)
        if board.game_over
          puts game_over_message
        else
          switch_players
        end
      end
    end

    def move_to_coordinate(current_player_move)
      mapping_array = { "1" => [0,0],
                        "2" => [1,0],
                        "3" => [2,0],
                        "4" => [0,1],
                        "5" => [1,1],
                        "6" => [2,1],
                        "7" => [0,2],
                        "8" => [1,2],
                        "9" => [2,2]
      }
      return mapping_array[current_player_move]
    end

  end
end
