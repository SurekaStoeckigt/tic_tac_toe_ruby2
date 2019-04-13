require "./lib/cell.rb"
require "./lib/array.rb"

module TicTacToe

  class Board
    attr_reader :grid

    def initialize(input = {})
      @grid = input.fetch(:grid, default_grid)
    end

    def get_cell(x,y)
      grid[x][y]
    end

    def set_cell(x,y,value)
      grid[x][y] = value
    end

    def game_over
      return :winner if winner?
      return :draw if draw?
      false
    end

  #   def formatted_grid
  #     grid.each do |row|
  #       puts row.map{ |cell| cell.value.empty? "_" : cell.value }.join("")
  #   end
  # end

    def draw?
      grid.flatten.map{ |cell_element| cell_element.none_empty?}
    end

    def winning_positions
      grid+#rows
      grid.transpose+ #columns
      diagonals
    end

    def diagonals
      diagonal_array = [ [get_cell(0,0), get_cell(1,1), get_cell(2,2)], [get_cell(0,2), get_cell(1,1), get_cell(2,0)]]
    end

    def winner? #will iterate over all winning positions and return true if the values in the winning positons are the same
      winning_positions.each do |position|
        next if winning_positions_values(position).all_empty?
        return true if winning_positions_values(position).all_same?
      end
      false
    end

    def winning_positions_values(position)
      position.map{|cell| cell.value } #gets each element from each array
    end

    private

    def default_grid
      Array.new(3){ Array.new(3) {Cell.new}}
    end
  end
end
